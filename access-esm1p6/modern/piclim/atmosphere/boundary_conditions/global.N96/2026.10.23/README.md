This readme file was generated on 2026-11-19 by Spencer Wong

# ESM1.6 piClim sea surface temperatures and sea ice

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
seaice_piclim_n96_gregorian.anc   12 month climatological sea ice boundary conditions for CMIP7 piClim experiments
sst_piclim_n96_gregorian.anc      12 month climatological sea surface temperature boundary conditions for CMIP7 piClim experiments
```

### Data Specific Information

#### `seaice_amip_n96_gregorian.anc`
12 months of processed climatological sea ice concentrations (units: grid cell fraction) for use in ESM1.6 piClim experiments. Due to the processing described under *Methodological information* values below 0 and above 1 are expected and correct in this dataset. These values get clipped when ingested by the model, and help ensure that the model output monthly means to match the monthly mean input data. 

#### `sst_amip_n96_gregorian.anc`
12 months of processed climatological sea surface temperatures (units: K) for use in ESM1.6 piClim experiments. Due to the processing described under *Methodological information* values below 271.35 are expected and correct in this dataset. These values get clipped when ingested by the model, and help ensure that the model output monthly means to match the monthly mean input data. 


## Methodological information

Climatological monthly mean sea surface temperatures and sea ice concentrations were first calculated from monthly mean outputs of the ESM1.6 piControl r1i1p1f1 experiment, using the 50 year period from calendar year 201 to 250 (data located in `/g/data/jq44/access-nri/access-esm1p6/global/piControl/r1i1p1f1/2026.04.07/`). The climatological values were then adjusted via the Karl Taylor procedure (see https://pcmdi.llnl.gov/report/pdf/60.pdf?id=86), to ensure that the monthly means are preserved after the model linearly interpolates the input SST and sea ice boundary conditions in time. This processing was applied using the code in https://github.com/ACCESS-NRI/CMIP7-Input/tree/144-piclim.