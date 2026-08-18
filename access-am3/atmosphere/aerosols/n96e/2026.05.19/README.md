This readme file was generated on 2026-08-14 by Claire Carouge

# Climatology of stratospheric aerosol optical properties

## Contact(s)

Name: Claire Carouge

Email: claire.carouge@anu.edu.au

Institution: ACCESS-NRI

## Data Access and Sharing

### Licensing/restrictions

No licensing information. The data cannot be shared beyond its purpose of input data for ACCESS3 simulations.

### Other locations

N/A

### Links/relationships

See methodology.

Original dataset: 
CMIP6 stratospheric aerosol optical properties climatology based on \nSAGE, SAM, CALIPSO, OSIRIS, 2D-model-simulation and Photometer.\n Created by Luo Beiping, downloaded from ETHZ (ftp://iacftp.ethz.ch/pub_read/luo/CMIP6/)\nby Ben Johnson (ben.johnson@metoffice.gov.uk), 29 Sept 2017."

### Recommended citation

N/A

## Data and Files

### File List

- volc_aer_absorption_lw.nc: Absorption coefficient for aerosols in the longwave range
- volc_aer_absorption_sw.nc: Absorption coefficient for aerosols in the shortwave range
- volc_aer_asymmetry_lw.nc: Asymmetry parameter for aerosols in the longwave range
- volc_aer_asymmetry_sw.nc: Asymmetry parameter for aerosols in the shortwave range
- volc_aer_extinction_lw.nc: Extinction coefficient for aerosols in the longwave range
- volc_aer_extinction_sw.nc: Extinction coefficient for aerosols in the shortwave range

### Data Specific Information

This data is only necessary when specifying `EXPT_AEROSOLS='aeroclim'` in the rose_suite.conf of an ACCESS3 suite.

See netcdf headers for other information about the data itself.

## Methodological information

The files were derived from "CMIP6 stratospheric aerosol optical properties climatology based on \nSAGE, SAM, CALIPSO, OSIRIS, 2D-model-simulation and Photometer.\n Created by Luo Beiping, downloaded from ETHZ (ftp://iacftp.ethz.ch/pub_read/luo/CMIP6/)\nby Ben Johnson (ben.johnson@metoffice.gov.uk), 29 Sept 2017." using python code store in the UM ancil/contrib repository. 

See more details in the netcdf headers.
