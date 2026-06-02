# Templates

## Model Input Data README

### Background

All model configuration input data directories should contain a README
file with a description of the data files contained therein. This 
description should include provenance, licensing references and 
technical information where available.

The file [README_template.md](./README_template.md) is a template that
represents best practice for a README of this kind. It is inspired from
two examples: [Cornell University Library Readme Template for Data](https://doi.org/10.7298/mhns-zm71.2),
and the [ASAP Open Science Guides: Readme for Datasets Guide](https://zenodo.org/records/12745572).

The template is written in [Markdown](https://www.markdownguide.org/),
a free and open format that allows for some minimal formatting and 
linking while remaining readable without rendering.

All README.md files are automatically tracked and pushed to this repository
when data is copied using the supplied workflows. This means there is
tracked and publicly visible information about the input files that
are used in our model configurations and related experiments. 

### How to use

To use the template, copy it to the directory where your model config
input data is located. 

> [!TIP]
> You can copy the file from `/g/data/vk83/configurations/inputs/templates` on `gadi`, [download it directly from GitHub](https://raw.githubusercontent.com/ACCESS-NRI/model-config-inputs/refs/heads/main/templates/README_template.md), or [copy it into your paste buffer](https://github.blog/changelog/2021-09-20-quickly-copy-the-contents-of-a-file-to-the-clipboard/) from the [GitHub page](https://github.com/ACCESS-NRI/model-config-inputs/blob/main/README_template.md)

Rename it to README.md so that it will be automatically
correctly displayed when viewed in the GitHub repository after
the workflow has run.

All text surrounded by square brackets, e.g. [Like this], should be
replaced with values that are appropriate for the dataset. Also replace
the square brackets, e.g.

    This readme file was generated on [YYYY-MM-DD] by [NAME]

would become

    This readme file was generated on 2026-06-17 by Jessie Blogs.

If the field/section is not relevant to the data set use the value N/A
to signify this.

Otherwise there are descriptions below with more detail where required,
and always feel free to add additional information where appropriate.

#### Contacts

The data custodian is the primary contact for anyone who needs 
more information about the data. Typically this would be an ACCESS-NRI
staff member, but not exclusively. However you must get their agreement
before naming another person as data custodian.

#### Licensing/restrictions

ACCESS-NRI uses [CC-By-4.0](https://spdx.org/licenses/CC-BY-4.0.html) 
for data products unless another existing license applies. 

#### Other locations

Other publicly accessible locations are useful for validation and 
access for anyone without an account on the HPC system.

#### Links/relationships

Relationships to other data sets provide more rich context with
minimal effort, and can help eliminate confusion between datasets
that are, or may seem, very similar. 

If derived from another data source include the list of sources.

### Recommended citation

If the data has a DOI or associated reference and there is a recommended
citation format then insert here. Otherwise insert "N/A".

#### File list

List all files, or folders as appropriate, contained in the data set. 
Detail any relationship between files or a description of the dataset
structure. If there are multiple versions of a dataset, detail what 
was updated, when and why. 

#### Data specific information

For each file without embedded metadata list the following details:
* A brief description of the data in each file
* List and define column headings in tabular data, units of measurement, date formats, variables, acronyms, abbreviations, labels, scoring of categorical data.
* Explain how missing data are represented (e.g., NA or blank).

For files with embedded metadata, e.g. netCDF, it may still be
appropriate to include some minimal information. This is up to the
discretion of the data custodian.

#### Methodological information

Workflow and processing steps to replicate data; this includes but
is not limited to:
- scripts
- code
- packages
- notebooks
- software used to process the data

