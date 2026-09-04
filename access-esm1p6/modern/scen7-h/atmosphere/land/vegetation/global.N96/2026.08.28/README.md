This readme file was generated on 2026-9-03 by Spencer Wong

# CMIP7 scen7-h vegetation files

## Contact(s)

Name: Alex Norton

Email: Alex.Norton@csiro.au>

Institution: CSIRO

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

- ACCESS_forest_thinning_frac_scen_h.nc         Fractional tree (wood) thinning ratio maps for 17 ACCESS land cover classes for the scen7-h scenario covering years 2022-2101.
- ACCESS_vegfrac_scen_h.nc                      Fractional cover maps for 17 ACCESS land cover classes for the scen7-h scenario covering years 2022-2100.


### Data Specific Information

## Methodological information

ACCESS_forest_thinning_frac_scen_h.nc is derived from the Land-Use Harmonization v3.1.1 (LUH3.1.1) harvested biomass, scaled globally by 0.0006 to convert to area, and with a rolling cumulative constraint imposed (at most 40% of the standing wood carbon can be thinned over a 30-year window).

ACCESS_vegfrac_scen_h.nc is derived from a combination of ACCESS-ESM1.5 land cover and Land-Use Harmonization v3.1.1 (LUH3.1.1) land-use states and transitions. For the Australian continent, the land cover is initialised with present-day data from the National Vegetation Information System v7, with LUH3.1.1 land-use change applied forward in time to 2100. Land cover fractions are duplicated in the final year as ACCESS-ESM1.6 expects data to be available for one year beyond the end of the simulation for restart generation. To avoid abrupt land-cover changes, newly added tiles are linearly ramped up over 10 years before tile fractions are renormalised.