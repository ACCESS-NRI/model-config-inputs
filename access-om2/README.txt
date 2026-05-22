Fri Nov 17 2023 -- Aidan Heerdegen

The data files in this directory are for use with ACCESS-OM2 model 
configurations released by ACCESS-NRI. 

See https://github.com/ACCESS-NRI/ACCESS-OM2 for more information 
on how to use these models.

The data files were created by COSIMA (https://cosima.org.au) and
the originals are available in /g/data/ik11/inputs.

The directory hierachy is by model, realm, purpose, grid resolution and
then version, e.g. 

model/
└── realm/
    └── product/
        └── grid_res/
            └── version/

Versioning is calendar based (https://calver.org).

For ACCESS-OM2 down to the level of product it looks like so:

access-om2
├── ice
│   ├── grids
│   └── initial_conditions
├── ocean
│   ├── chlorophyll
│   ├── grids
│   ├── initial_conditions
│   ├── processor_masks
│   ├── surface_salt_restoring
│   └── tides
└── remapping_weights
    └── JRA55

and for a single product to illustrate versioning:

access-om2/ocean/tides/
├── global.01deg
│   └── 2020.05.30
│       ├── roughness_amp.nc
│       ├── roughness_cdbot.nc
│       └── tideamp.nc
├── global.025deg
│   └── 2020.05.30
│       ├── roughness_amp.nc
│       ├── roughness_cdbot.nc
│       └── tideamp.nc
└── global.1deg
    └── 2020.05.30
        ├── roughness_amp.nc
        ├── roughness_cdbot.nc
        └── tideamp.nc

