This readme file was generated on 2026.11.19 by Spencer Wong

# Restart file for ESM1.6 piClim configurations

## Contact(s)

Name: Martin Dix

Email: Martin.Dix@anu.edu.au

Institution: ACCESS-NRI

## Data Access and Sharing

### Licensing/restrictions

CC-BY-4.0

### Other locations

N/A

### Links/relationships

N/A

### Recommended citation

https://doi.org/10.5281/zenodo.17490072

Please note that a model description paper for ESM1.6 is in preparation.

## Data and Files

### File List

```
├── atmosphere
│   ├── restart_dump.astart                     atmosphere restart file
│   └── um.res.yaml                             atmosphere restart date file
├── restart_metadata.yaml                       payu restart metadata file
```


### Data Specific Information

N/A

## Methodological information

`piClim` forcing was created from 50 years of the concentration driven piControl that matched the first 50 years of the historical experiment. CMIP7 guidance suggests starting from the mid-point of this period. This restart directory is copied from `/g/data/p73/archive/CMIP7/ACCESS-ESM1-6/production/Ndep2-PI-CNP-concentrations/restart124`.
Ocean, sea-ice, and coupler restart files have been removed, and coupling related fields have been removed from the atmosphere restart file `restart_dump.astart` following the process described here: https://forum.access-hive.org.au/t/create-an-amip-restart-from-a-coupled-restart/5261
