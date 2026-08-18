This readme file was generated on 2026-08-03 by Claire Carouge

# Soil information ancillaries for ACCESS-AM3 n512e configuration

## Contact(s)

Name: Shixue Li

Email: shixue.li@monash.edu  

Institution: 21st Century Weather

## Data Access and Sharing

### Licensing/restrictions

The soil roughness data can not be reused without express approval from the Met Office. See redistribution clause in the netcdf file: qrparm.soil_roughness.nc

### Other locations

N/A

### Links/relationships

N/A

### Recommended citation

N/A

## Data and Files

### File List

- qrparm.soil: soil parameters
- qrparm.soil.nc: netcdf version of the soil parameters. Provided for convenience, not used by the model.
- qrparm.soil_roughness: Soil roughness length.
- qrparm.soil_roughness.nc: netcdf version of the land area fraction file. Provided for convenience, not used by the model.
- qrparm.soil.dust: Dust information.
- qrparm.soil.dust.nc: netcdf version of the dust information file. Provided for convenience, not used by the model.

### Data Specific Information

Soil roughness data is sourced from: PARASOL+ASCAT Aeolian roughness length (z) for momentum, over bare soil, from Catherine Prigent, as described in Prigent et al. 2012 (doi:10.5194/amt-5-2703-2012). 

## Methodological information

The data was created using the [CCI-Ancillary-Suite](https://github.com/ACCESS-NRI/CCI-Ancillary-Suite) using the ACCESS-OM3-25km land-sea mask located at:
`/g/data/gb02/public/AM3/ancil_sources/access-om3-025deg-ESMFmesh.nc`
