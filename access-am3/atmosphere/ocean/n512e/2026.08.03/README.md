This readme file was generated on [2026-08-03] by [Claire Carouge]

# Oceanic ancillaries for ACCESS-AM3 n512e configuration

## Contact(s)

Name: Shixue Li

Email: shixue.li@monash.edu  

Institution: 21st Century Weather

## Data Access and Sharing

### Licensing/restrictions

ESA = Creative Commons Attribution 4.0 International licence (CC-BY 4.0)

### Other locations

N/A

### Links/relationships

SST data from the 0.05° European Space Agency SST Climate Change Initiative (CCI) Analysis v3.0 and associated sea ice concentration data from the
EUMETSAT Ocean and Sea Ice Satellite Application Facility (OSI SAF). See [https://climate.esa.int/en/projects/sea-surface-temperature/](https://climate.esa.int/en/projects/sea-surface-temperature/)

### Recommended citation

N/A

## Data and Files

### File List

- qrclim.sea: Sea colour information
- mmro3_monthly_CMIP6v2_3d_1978_2014_ants.anc.nc: netcdf version of the ozone information
- qrclim.seaice: Sea-ice concentration based of EUMETSAT OSI SAF dataset.
- qrclim.seaice.nc: netcdf version of the sea-ice information. Provided for convenience, not used by the model.
- qrclim.sst: Sea surface temperature timeseries based of ESA CCI dataset.
- qrclim.sst.nc: netcdf version of the sea surface temperature information. Provided for convenience, not used by the model.

### Data Specific Information

N/A

## Methodological information

The ESA SST/ICE ancillary is generated from daily ESA CCI Level-4 GHRSST analysed_sst/sea_ice_fraction data for 1981–2022. The daily files are concatenated into continuous Gregorian and 360-day time series, then linearly interpolated onto the target UM grid using the target land–sea mask. The input files are organised by year and month under the following directory:
`/g/data/cm45/access-nri/esacci/sea_surface_temperature/v3.0.1`
The target land–sea mask used for regridding is located at:
`/g/data/gb02/public/AM3/ancil_sources/access-om3-025deg-ESMFmesh.nc`
