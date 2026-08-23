[CmdletBinding()]
param()

$repoRoot = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..')).Path
$manifestPath = Join-Path $PSScriptRoot 'map-data-manifest.psd1'
$manifest = Import-PowerShellDataFile -LiteralPath $manifestPath
$validationErrors = [System.Collections.Generic.List[string]]::new()

foreach ($assetName in $manifest.Keys) {
    $asset = $manifest[$assetName]
    $assetPath = Join-Path $repoRoot $asset.Destination

    if (-not (Test-Path -LiteralPath $assetPath -PathType Leaf)) {
        $validationErrors.Add("Missing $($asset.Destination)")
        continue
    }

    $actualHash = (Get-FileHash -LiteralPath $assetPath -Algorithm SHA256).Hash
    if ($actualHash -ne $asset.SHA256) {
        $validationErrors.Add("$assetName checksum: expected $($asset.SHA256), received $actualHash")
    }

    try {
        $topology = Get-Content -Raw -LiteralPath $assetPath | ConvertFrom-Json -ErrorAction Stop
    }
    catch {
        $validationErrors.Add("$assetName is not valid JSON: $($_.Exception.Message)")
        continue
    }

    if ($topology.type -ne $asset.JsonType) {
        $validationErrors.Add("$assetName type: expected $($asset.JsonType), received $($topology.type)")
    }

    if ($asset.JsonType -eq 'Topology') {
        $actualObjects = @($topology.objects.PSObject.Properties.Name | Sort-Object)
        $expectedObjects = @($asset.TopologyObjects | Sort-Object)
        if (Compare-Object -ReferenceObject $expectedObjects -DifferenceObject $actualObjects) {
            $validationErrors.Add("$assetName objects: expected $($expectedObjects -join ', '), received $($actualObjects -join ', ')")
        }

        $geometryCollection = $topology.objects.($asset.GeometryObject)
        $actualItemCount = @($geometryCollection.geometries).Count
        if ($actualItemCount -ne $asset.GeometryCount) {
            $validationErrors.Add("$assetName geometry count: expected $($asset.GeometryCount), received $actualItemCount")
        }
        $itemLabel = 'geometries'
    }
    else {
        $actualItemCount = @($topology.features).Count
        if ($actualItemCount -ne $asset.FeatureCount) {
            $validationErrors.Add("$assetName feature count: expected $($asset.FeatureCount), received $actualItemCount")
        }
        $itemLabel = 'features'
    }

    Write-Output "Validated $($asset.Destination) ($actualItemCount $itemLabel)"
}

if ($validationErrors.Count -gt 0) {
    throw "Map data validation failed:`n - $($validationErrors -join "`n - ")"
}

Write-Output 'Map data validation passed.'
