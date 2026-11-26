This readme file was generated on 2026-11-25 by Spencer Wong

# CMIP7 piClim-anthro aerosol forcings

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

These single year ancillaries are extracted from the 2021 values in the historical experiment aerosols located in /g/data/vk83/configurations/inputs/access-esm1p6/modern/historical/atmosphere/aerosol/global.N96/2026.01.06.

### Recommended citation

https://doi.org/10.5281/zenodo.17490072

Please note that a model description paper for ESM1.6 is in preparation.

## Data and Files

### File List

- BC_piclim_anthro_2021_cmip7.anc           Black carbon anthropogenic emissions
- OCFF_piclim_anthro_2021_cmip7.anc         Organic carbon (OC) anthropogenic emissions
- Bio_piclim_anthro_2021_cmip7.anc          Fire emissions of OC and BC
- scycl_piclim_anthro_2021_cmip7.anc        SO2 anthropogenic emissions


### Data Specific Information

Each aerosol forcing file contains 12 months of climatological varying gridded emissions data. Units for each file are:
- BC_piclim_anthro_2021_cmip7.anc: kg(C) m-2 s-1
- OCFF_piclim_anthro_2021_cmip7.anc: kg(C) m-2 s-1
- Bio_piclim_anthro_2021_cmip7.anc: kg(C) m-2 s-1
- scycl_piclim_anthro_2021_cmip7.anc :  kg(S) m-2 s-1

## Methodological information

12 months of data are extracted from the 2021 values in the historical experiment aerosol ancillaries (/g/data/vk83/configurations/inputs/access-esm1p6/modern/historical/atmosphere/aerosol/global.N96/2026.01.06) using mule. The following values have been set in the file headers to ensure that the model treats them as periodic climatologies:

    ff.fixed_length_header.t1_year = 2021
    ff.fixed_length_header.t2_year = 2021
    ff.fixed_length_header.time_type = 2 
    ff.integer_constants.num_times = 12
    ff.fixed_length_header.t3_year = 0
    ff.fixed_length_header.t3_month = 1
    ff.fixed_length_header.t3_day = 0
    ff.fixed_length_header.t3_minute = 0
    ff.fixed_length_header.t3_second = 0
