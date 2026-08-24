This readme file was generated on 2026-08-24 by Dougie Squire

# JRA55-do v1.6.0 derived relative humidity (rhuss)

## Contact(s)

Name: Dougie Squire

Email: dougie.squire@anu.edu.au

Institution: ACCESS-NRI

## Data Access and Sharing

### Licensing/restrictions

- This derived dataset is licensed under the CC BY 4.0 license. You are free to share, copy, redistribute, and adapt the material for any purpose, provided appropriate credit is given.
- This dataset is derived from the JRA55-do surface-atmospheric dataset (CC BY 4.0), which is provided is provided by the Japan Meteorological Agency (JMA) and the Meteorological Research Institute (MRI).
- Users of this dataset must explicitly acknowledge the original JRA55-do project by citing the foundational paper (Tsujino et al., 2018; https://doi.org/10.1016/j.ocemod.2018.07.002).

### Other locations

NA

### Links/relationships

This dataset is derived from JRA55-do v1.6.0 huss, tas and psl variables. The script used to generate the derived data can be found at:

https://github.com/ACCESS-NRI/om2-scripts/blob/d398a6c51f86405de92269e3b53f30bfeee4c3e5/make_rhuss/make_rhuss.py

### Recommended citation

Tsujino et al., 2018; https://doi.org/10.1016/j.ocemod.2018.07.002

## Data and Files

### File List

 The dataset currently only include rhuss data for the period 1962-1971. This decade is all that is needed for the repeat-decade-forced experiments that required the generation of these data.

- rhuss_input4MIPs_atmosphericState_OMIP_MRI-JRA55-do-1-6-0_gr_196201010000-196212312100.nc
- rhuss_input4MIPs_atmosphericState_OMIP_MRI-JRA55-do-1-6-0_gr_196301010000-196312312100.nc
- rhuss_input4MIPs_atmosphericState_OMIP_MRI-JRA55-do-1-6-0_gr_196401010000-196412312100.nc
- rhuss_input4MIPs_atmosphericState_OMIP_MRI-JRA55-do-1-6-0_gr_196501010000-196512312100.nc
- rhuss_input4MIPs_atmosphericState_OMIP_MRI-JRA55-do-1-6-0_gr_196601010000-196612312100.nc
- rhuss_input4MIPs_atmosphericState_OMIP_MRI-JRA55-do-1-6-0_gr_196701010000-196712312100.nc
- rhuss_input4MIPs_atmosphericState_OMIP_MRI-JRA55-do-1-6-0_gr_196801010000-196812312100.nc
- rhuss_input4MIPs_atmosphericState_OMIP_MRI-JRA55-do-1-6-0_gr_196901010000-196912312100.nc
- rhuss_input4MIPs_atmosphericState_OMIP_MRI-JRA55-do-1-6-0_gr_197001010000-197012312100.nc
- rhuss_input4MIPs_atmosphericState_OMIP_MRI-JRA55-do-1-6-0_gr_197101010000-197112312100.nc

### Data Specific Information

See embedded metadata for details

## Methodological information

Created on 2026-08-24T02:42:10+00:00 using https://github.com/ACCESS-NRI/om2-scripts/blob/99d1ed156285cf4bbc413b4eb9f66ef69856581a/make_rhuss/make_rhuss.py:
python /g/data/vk83/apps/om2-scripts/make_rhuss/make_rhuss.py IAF --input-path=/g/data/qv56/replicas/input4MIPs/CMIP6Plus/OMIP/MRI/MRI-JRA55-do-1-6-0/atmos/3hrPt/huss/gr/v20240531 --output-path=/g/data/tm70/ds0092/model/inputs/JRA55-do/rhuss/IAF --start-year=1962 --end-year=1971
