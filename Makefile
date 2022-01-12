.PHONY: help check clean-pyc clean-test clean conda-export lint mypy setup test


.DEFAULT: help
help:
	@echo 'make check'
	@echo '       Run full suite of unit/type/lint checks'
	@echo 'make clean'
	@echo '       Clean up cache and coverage artifacts'
	@echo 'make conda-export'
	@echo '       Update conda YAML based on env'
	@echo 'make lint'
	@echo '       Lint code with pylint'
	@echo 'make mypy'
	@echo '       Check types with mypy'
	@echo 'make setup'
	@echo '       Create conda env based on environment YAML'
	@echo 'make test'
	@echo '       Run pytest unit tests'

check: test lint mypy

clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
	find . -name '__pycache__' -exec rm -fr {} +

clean-test:
	rm -f .coverage
	rm -f .coverage.*

clean: clean-pyc clean-test

conda-export:
	conda env export | grep -v "^prefix: " > environment.yml

lint:
	pylint src -j 4 --reports=y

mypy:
	mypy src

setup:
	conda env create -f environment.yml

test: clean
	python3 -m pytest -v --cov=src --cov-report=term-missing
