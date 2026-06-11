This readme file was generated on [YYYY-MM-DD] by [NAME]

# Restart file for ESM 1.6 esm-historical configuration

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
The 20PgC initial wood product inserted into the atmospheric restart `restart_dump.astart` is taken from the file `/g/data/vk83/configurations/inputs/access-esm1p6/modern/historical/atmosphere/land/biogeochemistry/global.N96/2026.05.08/access-esm16_wood_prod_initial_1850_20PgC.nc `

The 1850 wood thinning data inserted into the atmospheric restart `restart_dump.astart` is taken from the file `/g/data/vk83/configurations/inputs/access-esm1p6/modern/historical/atmosphere/land/vegetation/global.N96/2026.05.08/LUH3_cable_thinning_frac_from_bioh_1850-2023_v2.nc`

### Recommended citation

https://doi.org/10.5281/zenodo.17490072

Please note that a model description paper for ESM1.6 is in preparation.

## Data and Files

### File List

```
├── atmosphere
│   ├── restart_dump.astart                     atmosphere restart file
│   └── um.res.yaml                             atmosphere restart date file
├── coupler
│   ├── a2i.nc:                                 coupler atmosphere -> ice restart file
│   ├── i2a.nc                                  coupler ice -> atmosphere restart file
│   └── o2i.nc                                  coupler ocean -> ice restart file
├── ice
│   ├── cice_in.nml                             ice namelist (unused)
│   ├── iced.1850-01-01-00000.nc                ice restart file
│   ├── ice.restart_file                        ice restart pointer file
│   └── mice.nc                                 restart file for ice -> ocean coupling
├── ocean
│   ├── ocean_age.res.nc                        ocean age restart file
│   ├── ocean_barotropic.res.nc                 restart file for ocean barotropic module
│   ├── ocean_bih_friction.res.nc               restart for biharmonic friction module
│   ├── ocean_density.res.nc                    restart for ocean density module
│   ├── ocean_frazil.res.nc                     restart for frazil module
│   ├── ocean_lap_friction.res.nc               restart for lateral laplacian friction module
│   ├── ocean_neutral.res.nc                    restart for neutral physics module
│   ├── ocean_pot_temp.res.nc                   restart for potential temperature
│   ├── ocean_sbc.res.nc                        restart for ocean surface boundary conditions
│   ├── ocean_sigma_transport.res.nc            restart for sigma transport module
│   ├── ocean_solo.res                          ocean restart date file
│   ├── ocean_temp_salt.res.nc                  restart for temperature and salinity
│   ├── ocean_thickness.res.nc                  restart for ocean thickness module
│   ├── ocean_tracer.res                        file containing checksums of ocean tracer values for reproducibility checks
│   ├── ocean_velocity_advection.res.nc         restart for velocity advection
│   ├── ocean_velocity.res.nc                   restart for velocity
│   ├── ocean_wombatlite_airsea_flux.res.nc     restart for bgc surface fluxes
│   └── ocean_wombatlite.res.nc                 restart for wombatlite model tracers
```


### Data Specific Information

N/A

## Methodological information

This restart file is copied from `/g/data/p73/archive/CMIP7/ACCESS-ESM1-6/production/Ndep2-PI-CNP-concentrations/restart099/`, the 100th restart from the piControl simulation with calendar year 201. The year has been changed to 1850, an initial 20PgC wood product and the 1850 wood thinning data has been inserted into the atmospheric restart using the scripts added in https://github.com/ACCESS-NRI/access-esm1.6-configs/pull/741.
