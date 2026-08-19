Created: 2026-08-18
Name: Claire Carouge

This README describes the organisation of the files for ACCESS-AM3.

# atmosphere

Contains ancillary files needed by the UM when running in atmosphere-land configuration.

|-- aerosols: files about the atmospheric composition such as aerosols, ozone and DMS, and optical properties of aerosols.
|-- ocean: files with oceanic information for the atmosphere such as SSTs, sea ice concentration and sea colour.
|-- orography: files about the topography of the land such as mean orography, radiation parameters dependent on the orography, wave and form drag.

# land

Contains ancillary files needed by CABLE when running in atmosphere-land configuration.

|-- land-sea-mask: land/sea mask and land/sea fractions
|-- soil: soil information such as soil parameters, soil roughness, and dust
|-- topography: topographical information such as mean topographic index and its standard deviation index.
|-- vegetation: vegetation information such as plant functional types and LAI.

# restart

Contains restart files used as initial conditions for different configurations.

# rivers

Contains ancillary files needed by the river model when running in fully coupled configuration. The river model always run at 1x1 degree resolution but the files are masked using the land/sea mask at the resolution of the simulation. Contains information on the river sequence and river storage.

# socrates

Spectral information for the radiative transfer model, SOCRATES.

# ukca

Information for the interaction of chemical species with the radiation, mixing ratios of oxidants and emissions of chemical species.
