Wed May 8 2024 -- Dougie Squire

The data files in this directory are for use with ACCESS-OM3 model 
configurations released by ACCESS-NRI. 

Some of the data files were created by COSIMA (https://cosima.org.au)
and the originals are available in /g/data/ik11/inputs.

The directory hierachy is by model, component, purpose, grid
resolution and then version, e.g. 

model/
└── component/
    └── product/
        └── grid_res/
            └── version/


For ACCESS-OM3 down to the level of product the tree looks like so:

access-om3/
├── bling
│   ├── forcing
│   └── initial_conditions
├── cice
│   ├── grids
│   └── initial_conditions
├── mom
│   ├── grids
│   ├── initial_conditions
│   └── surface_salt_restoring
├── README.txt
├── share
│   ├── grids
│   └── meshes
├── wombat
│   ├── forcing
│   └── initial_conditions
└── ww3
    ├── initial_conditions
    └── mod_def

"share" directories contain inputs used across the heirarchy level.
For example, the "share" directory at the component level contains
inputs used my multiple components. For a single product to
illustrate versioning the tree looks like:

access-om3/mom/grids/
├── mosaic
│   ├── global.025deg
│   │   └── 2020.05.30
│   │       └── ocean_hgrid.nc
│   └── global.1deg
│       ├── 2020.05.30
│       │   ├── ocean_hgrid.nc
│       │   └── ocean_mosaic.nc
│       └── 2024.05.08
│           └── grid_spec.nc
└── vertical
    ├── global.025deg
    │   └── 2024.04.04
    │       └── ocean_vgrid.nc
    └── global.1deg
        └── 2023.07.28
            └── ocean_vgrid.nc

On 2025-04-24, we transitioned from specifying nominal resolution in deg to km. Hardlinks of inputs using the new naming were created using the following script:

```
#!/usr/bin/env bash

set -e

cd /g/data/vk83/configurations/inputs/access-om3

# Copy resolution dirs with hardlinks
find -name global.1deg -type d -execdir cp -rT --link {} ./global.100km \;
find -name global.025deg -type d -execdir cp -rT --link {} ./global.25km \;

# Rename linked files with resolution in their name
cd /g/data/vk83/configurations/inputs/access-om3/share/meshes/global.25km/2024.03.26
mv access-om2-025deg-ESMFmesh.nc access-om2-25km-ESMFmesh.nc
mv access-om2-025deg-nomask-ESMFmesh.nc access-om2-25km-nomask-ESMFmesh.nc

cd /g/data/vk83/configurations/inputs/access-om3/share/meshes/global.100km/2024.01.25
mv access-om2-1deg-ESMFmesh.nc access-om2-100km-ESMFmesh.nc
mv access-om2-1deg-nomask-ESMFmesh.nc access-om2-100km-nomask-ESMFmesh.nc
```
