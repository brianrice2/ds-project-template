# Project template

An example repo structure for data science projects.

## Directory structure

```
├── README.md                         <- You are here!
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
└── run.py                            <- Orchestration function to simplify the execution of
                                           one or more of the src scripts
```
