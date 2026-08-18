This readme file was generated on [2026-08-03] by [Claire Carouge]

# Atmospheric composition ancillaries for ACCESS-AM3 n512e configuration

## Contact(s)

Name: Shixue Li

Email: shixue.li@monash.edu  

Institution: 21st Century Weather

## Data Access and Sharing

### Licensing/restrictions

Ozone = Creative Commons Attribution-ShareAlike 4.0 International License (CC BY-SA 4.0)

### Other locations

N/A

### Links/relationships

Ozone concentrations based on the CMIP6 dataset: Hegglin, Michaela; Kinnison, Douglas; Lamarque, Jean-Francois; Plummer, David (2016). CCMI ozone in support of CMIP6 - version 1.0. Earth System Grid Federation. [https://doi.org/10.22033/ESGF/input4MIPs.1115](https://doi.org/10.22033/ESGF/input4MIPs.1115)

### Recommended citation

N/A

## Data and Files

### File List

- mmro3_monthly_CMIP6v2_3d_1978_2014_ants.anc: 3D ozone based of CMIP6's input4MIPS data
- mmro3_monthly_CMIP6v2_3d_1978_2014_ants.anc.nc: netcdf version of the ozone information. Provided for convenience, not used by the model
- qrclim.aerosols.nc: climatology of aerosols concentrations in the atmosphere.
- qrclim.sulpdms: dimethyl sulfide (DMS) concentrations in sea water.
- qrclim.sulpdms.nc: netcdf version of the DMS information. Provided for convenience, not used by the model

### Data Specific Information

N/A

## Methodological information

The ozone ancillary is generated from monthly input4MIPs vmro3 data, using zonal-mean temperature to convert pressure levels to heights before interpolation onto the target UM grid. The input files are grouped into cmip6 and cmip7 stored in the following directories:

```
/g/data/gb02/public/AM3/ancil_sources/ozone_input
|-- cmip6
|   |-- vmro3_input4MIPs_ozone_CMIP_UReading-CCMI-1-0_gn_185001-201412.nc
|   -- zmta_input4MIPs_Temperature_CMIP_UReading-CCMI-1-0_gr_185001-201412.nc
|-- cmip7
    |-- vmro3_input4MIPs_ozone_CMIP_FZJ-CMIP-ozone-2-0_gn_185001-202212.nc
    |-- zmta_input4MIPs_ozone_CMIP_FZJ-CMIP-ozone-1-2_gn_185001-202212.nc
```
