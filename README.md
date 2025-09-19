# model-config-inputs

## Overview

This repo is used for remote modification of model configuration inputs and storage of their metadata. 

Since model configuration inputs are so large, we can't store them directly on git. But we can store metadata about them, which gives a view into when and how configuration inputs have changed. This metadata can also be consumed by other projects. 

## Usage

This repository is not committed to directly - think of it more as a representation of what released model configuration inputs are currently on Gadi. 

But, we do have a workflow for adding/updating the actual model configuration inputs on Gadi here: https://github.com/ACCESS-NRI/model-config-inputs/actions/workflows/remote-copy.yml. This is used by regular users to move configurations from shared spaces into the locked-down Release area of `vk83` on Gadi, or the less restrictive Prerelease area of `vk83`. 
### Using the Workflow

The workflow has the following inputs:

| Description | Type | Workflow Input Name | Required | Default | Example | Notes |
| ----------- | ---- | ------------------- | -------- | ------- | ------- | ----- |
| The Github Environment for the given remote | Choice of `string`s | `remote-environment` | `true` | `Gadi Release` | This input determines if the model config input(s) are going to the Release or Prerelease area of the HPC, and sets users to sign-off on the move accordingly |
| Note describing the reason for the change | `string` | `note` | `false` | N/A | `Moving this input in for the 2025.02.000 release of MODEL` | This input is used to justify the reason for the movement of config inputs, so users who sign-off on the change know why it was made |
| Remote absolute path to configuration input source file or directory | `string` (path) | `source` | `true` | N/A | `/scratch/tm70/inputs/access-om2/2025.12.000`, `/scratch/tm70/inputs/access-om2/2025.12.000/some.nc` | This path to a directory or file to be copied must be readable by the service user |
| Remote absolute path to configuration input destination directory | `string` (path) | `target` | `true` | N/A | `/g/data/vk83/configurations/inputs/access-om2/2025.12.000` (for Release area), `/g/data/vk83/prerelease/configurations/inputs/access-om2/2025.12.000` (for Prerelease area) | The destination directory for the copied file/folder. Must be a directory, and mustn't have the same `basename` as the source |
| Overwrite the remote target if it already exists | `boolean` | `overwrite-target` | `true` | `false` | `true`, `false` | It is usually preferred to create a new config input rather than overwrite an existing one for Release, but this can be used in Prerelease |
| ACL spec to be passed to `setfacl -m` for the given target | `string` (ACL spec) | `target-acl-spec` | `true` | `u::rwx,u:tm70_ci:rwx,g::r-x,m::rwx,o::---,d:u::rwx,d:u:tm70_ci:rwx,d:g::r-x,d:m::rwx,d:o::---` | N/A | ACL Spec used to prevent writing by anyone but the service user. This is used in Release to disallow edits to released config inputs by users |
| Also store target on the remotes cold storage service | `boolean` | `store-on-tape` | `true` | `true` | `true`, `false` | Used to also store the config inputs on the HPCs cold storage (such as Gadi's tape storage). Used for archival purposes. Is demarcated by `release`/`prerelease` |

#### Common Pitfalls When Using the Workflow

##### Source and Target Use the Same `basename`

*Problem*: `source` is `/scratch/tm70/inputs/access-om2/2025.06.00` and `target` is `/g/data/vk83/configurations/inputs/access-om2/2025.06.00`, the workflow will fail. 

*Explanation*: This is a common rsync error (which we use under the hood) - It would lead to a directory structure of `/g/data/vk83/configurations/inputs/access-om2/2025.06.00/2025.06.00`, which probably isn't what you want.

*Solution*: Drop the `2025.06.00` directory from the `target`, so it is `/g/data/vk83/configurations/inputs/access-om2`. This will lead to the expected directory structure of `g/data/vk83/configurations/inputs/access-om2/2025.06.00`. 

##### Target Is A File

*Problem*: `source` is `/scratch/tm70/inputs/access-om2/2025.06.00/some.nc` and `target` is `/g/data/vk83/configurations/inputs/access-om2/2025.06.00/some.nc`, the workflow will fail.

*Explanation*: This means that you are attempting to copy a file *into* an already-existing file. 

*Solution*: Drop the `some.nc` file from the `target`, so it is `/g/data/vk83/configurations/inputs/access-om2/2025.06.00`. This will lead to the expected directory structure of `g/data/vk83/configurations/inputs/access-om2/2025.06.00/some.nc`.
