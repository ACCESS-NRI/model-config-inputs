This readme file was generated on 2026-11-25 by Spencer Wong

# CMIP7 piClim-antrho ozone forcings

## Contact(s)

Name: Spencer Wong

Email: spencer.wong@anu.edu.au

Institution: ACCESS-NRI

## Data Access and Sharing

### Licensing/restrictions

CC-BY-4.0

### Other locations

N/A

### Links/relationships

This single year ozone ancillary is extracted from the 2021 values in the historical experiment ozone located in /g/data/vk83/configurations/inputs/access-esm1p6/modern/historical/atmosphere/forcing/global.N96/2026.03.03/ozone_1849_2023_cmip7.anc

### Recommended citation

https://doi.org/10.5281/zenodo.17490072

Please note that a model description paper for ESM1.6 is in preparation.

## Data and Files

### File List

- ozone_piclim_anthro_2021_cmip7.anc Zonal mean ozone mass mixing ratios

### Data Specific Information

The ozone forcing file contains 12 months of climatological zonal mean ozone mass mixing ratios.

## Methodological information

12 months of data are extracted from the 2021 values in the historical experiment ozone ancillary (/g/data/vk83/configurations/inputs/access-esm1p6/modern/historical/atmosphere/aerosol/global.N96/2026.01.06) using mule. The following values have set in the file headers to ensure that the model treats the file as a periodic climatology:

    ff.fixed_length_header.t1_year = 2021
    ff.fixed_length_header.t2_year = 2021
    ff.fixed_length_header.time_type = 2 
    ff.integer_constants.num_times = 12
    ff.fixed_length_header.t3_year = 0
    ff.fixed_length_header.t3_month = 1
    ff.fixed_length_header.t3_day = 0
    ff.fixed_length_header.t3_minute = 0
    ff.fixed_length_header.t3_second = 0
