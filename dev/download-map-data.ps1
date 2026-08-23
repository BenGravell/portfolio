[CmdletBinding()]
param()

$repoRoot = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..')).Path
$manifestPath = Join-Path $PSScriptRoot 'map-data-manifest.psd1'
$manifest = Import-PowerShellDataFile -LiteralPath $manifestPath

foreach ($assetName in $manifest.Keys) {
    $asset = $manifest[$assetName]
    $destination = Join-Path $repoRoot $asset.Destination
    $destinationDirectory = Split-Path -Parent $destination
    $temporaryDownload = "$destination.download"

    New-Item -ItemType Directory -Path $destinationDirectory -Force | Out-Null
    try {
        Write-Output "Downloading $assetName from $($asset.Url)"
        Invoke-WebRequest -UseBasicParsing -Uri $asset.Url -OutFile $temporaryDownload -ErrorAction Stop

        $downloadHash = (Get-FileHash -LiteralPath $temporaryDownload -Algorithm SHA256).Hash
        if ($downloadHash -ne $asset.SHA256) {
            throw "Checksum mismatch for $assetName. Expected $($asset.SHA256); received $downloadHash."
        }

        Move-Item -LiteralPath $temporaryDownload -Destination $destination -Force
        Write-Output "Updated $($asset.Destination)"
    }
    finally {
        if (Test-Path -LiteralPath $temporaryDownload) {
            Remove-Item -LiteralPath $temporaryDownload -Force
        }
    }
}

& (Join-Path $PSScriptRoot 'check-map-data.ps1')
