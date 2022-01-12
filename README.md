# Data Science Project Template

An example repo structure for data science projects.

**So what does using this template offer?**

- A consistent, organized structure to start from: Helps you quickly understand the structure of a project, new or old, and identify files of interest
- Automation: Automatically update table of contents, run unit tests, set up organized pull requests, and more
- Easier imports: Using a local package makes it easier to import source code modules
- And more, discussed in [The Good Research Code Handbook](https://goodresearch.dev/index.html) and [How to Set Up a Python Project For Automation and Collaboration](https://eugeneyan.com/writing/setting-up-python-project-for-automation-and-collaboration/)

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
## Table of Contents

- [Directory structure :world_map:](#directory-structure-world_map)
- [Setup :tent:](#setup-tent)
  - [Python virtual environment](#python-virtual-environment)
  - [Install your package](#install-your-package)
  - [Github Actions](#github-actions)

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

### Python virtual environment

First, edit the starter environment details in `environment.yml` with your desired environment name and Python version.

Then, create the new environment:

```bash
make setup
```

Finally, activate your environment:

```bash
conda activate myenv
```

If you install any new dependencies, either manually edit the `environment.yml` spec or run `make conda-export` to save all aspects of the current environment. Happy coding!

### Install your package

In order to make using the `src/` source code modules easier from any directory in the project, this project is a (minimal) package. Install the package via:

```bash
pip install -e .
```

### Github Actions

This repo uses Github Actions to automatically run workflows. If you want to trigger actions, you'll need to configure a personal access token. See [this section](https://github.com/marketplace/actions/toc-generator#github_token) of the TOC Generator docs:

1. [Generate a personal access token](https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line) with the public_repo or repo scope (repo is required for private repositories).
1. [Save as ACCESS_TOKEN](https://help.github.com/en/actions/configuring-and-managing-workflows/creating-and-storing-encrypted-secrets) in this repository's "Secrets" settings
