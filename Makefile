.PHONY: help conda-update tests


.DEFAULT: help
help:
	@echo 'make tests'
	@echo '       Run pytest unit tests'

conda-update:
	conda env update --prune -f environment.yml

tests:
	python3 -m pytest -v
