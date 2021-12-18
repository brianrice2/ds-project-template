# Data Science Project Template

An example repo structure for data science projects.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
## Table of Contents

- [Directory structure :world_map:](#directory-structure-world_map)
- [Setup :tent:](#setup-tent)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Directory structure :world_map:

```
├── README.md                         <- You are here!
|
├── .github/                          <- Automated configurations for Github 
|
├── config/                           <- Configuration files
│   ├── local/                        <- Private configuration files and environment variable
|   |                                      settings (not tracked)
│   └── logging/                      <- Configuration of Python loggers
|
├── data/                             <- Data files used for analysis or by the app itself
│   ├── cleaned/                      <- Processed data
│   └── raw/                          <- Raw data
|
├── deliverables/                     <- Final presentations, white papers, etc. for
|                                          stakeholders
│
├── docs/                             <- Sphinx documentation based on Python docstrings
│
├── notebooks/
│   ├── archive/                      <- Development notebooks no longer being used
│   ├── deliver/                      <- Notebooks shared with others / in final state
│   └── develop/                      <- Current notebooks being used in development
|
├── scripts/                          <- Standalone Python/bash/other scripts
│
├── src/                              <- Source code for the project 
│
├── tests/                            <- Pytest unit tests
│
├── Makefile                          <- Defines handy directives for automation
└── setup.py                          <- Make the repo into a package for easier imports
```

## Setup :tent:

### Install your package

In order to make using the `src/` source code modules easier from any directory in the project, this project is a (minimal) package. Install the package via:

```bash
pip install -e .
```

Inspired by [The Good Research Code Handbook](https://goodresearch.dev/index.html).

### Github Actions

The TOC Generator uses Github Actions to automatically trigger workflows. If you want to trigger actions, you'll need to configure a personal access token. See [this section](https://github.com/marketplace/actions/toc-generator#github_token) of the TOC Generator docs:

1. [Generate a personal access token](https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line) with the public_repo or repo scope (repo is required for private repositories).
1. [Save as ACCESS_TOKEN](https://help.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets)
