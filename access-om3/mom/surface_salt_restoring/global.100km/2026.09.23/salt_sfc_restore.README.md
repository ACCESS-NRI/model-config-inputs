This readme file was generated on 2026-09-23 by ek4684 (ezhilsabareesh8)

# salt_sfc_restore.nc

## Contact(s)

Name: ek4684 (ezhilsabareesh8)

Email: ezhilsabareesh.kannadasan@anu.edu.au

Institution: ACCESS-NRI

## Data Access and Sharing

### Licensing/restrictions

Public Domain

### Other locations

N/A

### Links/relationships

Other files used to prepare this data:

- /g/data/ik11/inputs/access-om3/woa23/1deg/2026.02.17/woa23_ts_01_mom.nc (md5 hash: 062218ef55cc32c5360c188d77a267dc)
- /g/data/ik11/inputs/access-om3/woa23/1deg/2026.02.17/woa23_ts_02_mom.nc (md5 hash: 1d146b2a630631fd967ddfe38a423807)
- /g/data/ik11/inputs/access-om3/woa23/1deg/2026.02.17/woa23_ts_03_mom.nc (md5 hash: 73f4a4a748665953a61ac890dba6de6c)
- /g/data/ik11/inputs/access-om3/woa23/1deg/2026.02.17/woa23_ts_04_mom.nc (md5 hash: b7eecbb37341048dfd42d4c12e7ed6f0)
- /g/data/ik11/inputs/access-om3/woa23/1deg/2026.02.17/woa23_ts_05_mom.nc (md5 hash: 5bab0b496d4f9fd4906c5a118475b46e)
- /g/data/ik11/inputs/access-om3/woa23/1deg/2026.02.17/woa23_ts_06_mom.nc (md5 hash: 47ea06d4ff050b81848c4afffa5288ed)
- /g/data/ik11/inputs/access-om3/woa23/1deg/2026.02.17/woa23_ts_07_mom.nc (md5 hash: 7b5898c99056f3ef9885df1d3495a729)
- /g/data/ik11/inputs/access-om3/woa23/1deg/2026.02.17/woa23_ts_08_mom.nc (md5 hash: 7068f15623719eb2d6dd2c24c93f4746)
- /g/data/ik11/inputs/access-om3/woa23/1deg/2026.02.17/woa23_ts_09_mom.nc (md5 hash: 3698629599782ed2beb60122d24a6d84)
- /g/data/ik11/inputs/access-om3/woa23/1deg/2026.02.17/woa23_ts_10_mom.nc (md5 hash: 6bafdd55f7d2f9a34224f5e3ddcdd45e)
- /g/data/ik11/inputs/access-om3/woa23/1deg/2026.02.17/woa23_ts_11_mom.nc (md5 hash: f9cceacf6c2d81b53efe8f451b945ded)
- /g/data/ik11/inputs/access-om3/woa23/1deg/2026.02.17/woa23_ts_12_mom.nc (md5 hash: 509766cd8ff4f17309c28cf60f5fef06)

### Recommended citation

N/A

## Data and Files

### File List

Files in this dataset:

- /g/data/tm70/ek4684/om3-scripts/surface_restoring_generation/generation_100km_20260923/salt_sfc_restore.nc

MD5: `488131bd6c1cda534c6ff52263cbdc65`

SHA-256: `aad61ac51ab4266d198e6357a21ff778a0496dcfd580e9d9be41475dbfb0c353`

## Methodological information

Created by ek4684 (ezhilsabareesh8) on 2026-09-23, using https://github.com/COSIMA/om3-scripts/blob/420c802c61f7213e7b073b946124188a2c6b7106//surface_restoring_generation/make_sfc_restore_from_regridded_woa.py: /g/data/xp65/public/apps/med_conda_scripts/analysis3-26.08.d/bin/python /g/data/tm70/ek4684/om3-scripts/surface_restoring_generation/generation_100km_20260923/source/surface_restoring_generation/make_sfc_restore_from_regridded_woa.py --input_path=/g/data/ik11/inputs/access-om3/woa23/1deg/2026.02.17 --var=asalt --output_file=/g/data/tm70/ek4684/om3-scripts/surface_restoring_generation/generation_100km_20260923/salt_sfc_restore.nc

### Changes compared with the 2026.04.07 version

This 100 km file corrects the boundary smoothing described in ACCESS-NRI/access-om3-configs issue #1241, using the fix merged in ACCESS-NRI/om3-scripts PR #170 (commit `420c802c61f7213e7b073b946124188a2c6b7106`). The previous smoother mixed northern and southern rows and replicated east-west edges. The uniform 3 by 3 weights are retained, with:

- Periodic east-west neighbours.
- Replication of the southernmost row.
- Northern tripolar scalar-grid connectivity using the reversed last row (`i -> nx - 1 - i`, zero-based).

The 12 monthly input paths and MD5 hashes exactly match the provenance of the reference:

- /g/data/vk83/prerelease/configurations/inputs/access-om3/mom/surface_salt_restoring/global.100km/2026.04.07/salt_sfc_restore.nc

The old smoother reproduces that reference exactly from these same inputs. The numerical differences therefore isolate the corrected boundary treatment.

### Verification

All 12 saved months passed independent nine-neighbour calculations, including each boundary and fold corners. The northern fold was checked against the input model grid, whose MD5 matches the monthly input provenance. Nine focused regression tests also passed.

Dimensions are `time=12`, `lat=324`, `lon=360`, and `nbounds=2`. Coordinates, calendar, climatology bounds, core variable attributes, float64 dtype, compression and chunk sizes match the reference. There are no missing or nonfinite data values.

Differences above 1e-12 g kg-1 occur only on the outermost rows or columns. Maximum boundary difference: 10.0047515 g kg-1. Maximum interior difference: 1.56319e-13 g kg-1 (floating-point roundoff).

The current merged generator retains the WOA `cell_methods` attribute and writes `_FillValue=1e20`, whereas the old reference uses NaN as its fill marker. These metadata differences do not change any actual data cell. Global history and input-provenance attributes identify this new generation.