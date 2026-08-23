@{
    Countries = @{
        Destination    = 'assets/data/countries-50m.json'
        Url            = 'https://cdn.jsdelivr.net/npm/world-atlas@2.0.2/countries-50m.json'
        SHA256         = '04342CDC1E3016BCD7DB1630DE95684D67B79FE3C8C460321E87AEF469502394'
        JsonType       = 'Topology'
        TopologyObjects = @('countries', 'land')
        GeometryObject = 'countries'
        GeometryCount  = 241
    }
    States = @{
        Destination    = 'assets/data/states-10m.json'
        Url            = 'https://cdn.jsdelivr.net/npm/us-atlas@3.0.1/states-10m.json'
        SHA256         = 'D76B391CCFA8BFF601D51E3E3DA5D43A89FA46CD5CACA72CE731B383BE5596D0'
        JsonType       = 'Topology'
        TopologyObjects = @('states', 'nation')
        GeometryObject = 'states'
        GeometryCount  = 56
    }
    CountriesLowResolution = @{
        Destination    = 'assets/data/countries-110m.geojson'
        Url            = 'https://raw.githubusercontent.com/nvkelso/natural-earth-vector/v4.1.0/geojson/ne_110m_admin_0_countries.geojson'
        SHA256         = 'A4D67EAC9C75D5B6F20170D2B07BB53EA791536B0C8E5EBAE3BA94DF093F76E0'
        JsonType       = 'FeatureCollection'
        FeatureCount   = 177
    }
}
