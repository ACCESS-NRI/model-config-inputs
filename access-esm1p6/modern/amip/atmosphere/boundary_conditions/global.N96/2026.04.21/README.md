This readme file was generated on 2026-06-16 by Spencer Wong

# ESM1.6 AMIP sea surface temperatures and sea ice

## Contact(s)

Name: Paul Leopardi

Email: Paul.Leopardi@anu.edu.au

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
seaice_amip_n96_gregorian.anc   CMIP7 sea ice boundary conditions for ACCESS-ESM1.6
sst_amip_n96_gregorian.anc      CMIP7 sea surface temperature boundary conditions for ACCESS-ESM1.6
```

### Data Specific Information

#### `seaice_amip_n96_gregorian.anc`
Processed monthly sea ice concentrations (units: grid cell fraction) from 1870 to 2022 for use in ESM1.6 AMIP experiments. Due to the processing described under *Methodological information* values below 0 and above 1 are expected and correct in this dataset. These values get clipped when ingested by the model, and help ensure that the model output monthly means to match the monthly mean input data. 

#### `sst_amip_n96_gregorian.anc`
Processed monthly sea surface temperatures (units: K) from 1870 to 2022 for use in ESM1.6 AMIP experiments. Due to the processing described under *Methodological information* values below 271.35 are expected and correct in this dataset. These values get clipped when ingested by the model, and help ensure that the model output monthly means to match the monthly mean input data. 


## Methodological information

Unprocessed sea ice concentrations and sea surface temperatures are sourced from the PCMDI-AMIP-1-1-10 AMIP boundary conditions datasets (DOI: 10.25981/ESGF.input4MIPs.CMIP7/2575015) produced by PCMDI and licensed under CC-BY-4.0, available on gadi at `/g/data/qv56/replicas/input4MIPs/CMIP7/CMIP/PCMDI/PCMDI-AMIP-1-1-10/seaIce/mon/siconc/gn/v20250807/siconc_input4MIPs_SSTsAndSeaIce_CMIP_PCMDI-AMIP-1-1-10_gn_187001-202212.nc` and `/g/data/qv56/replicas/input4MIPs/CMIP7/CMIP/PCMDI/PCMDI-AMIP-1-1-10/ocean/mon/tos/gn/v20250807/tos_input4MIPs_SSTsAndSeaIce_CMIP_PCMDI-AMIP-1-1-10_gn_187001-202212.nc`.

The unprocessed data have first been regridded to ESM1.6's n96 atmospheric grid using the `ants.regrid.rectilinear.TwoStage` method. Monthly mean values in the regridded data have then been adjusted via the Karl Taylor procedure (see https://pcmdi.llnl.gov/report/pdf/60.pdf?id=86), to ensure that the monthly means are preserved after the model linearly interpolates the input SST and sea ice boundary conditions in time. This procedure has been applied using the code in https://github.com/ACCESS-NRI/ancillary-file-science/pull/2 (requires permissions to access).


