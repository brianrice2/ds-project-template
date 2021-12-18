.PHONY: help tests


.DEFAULT: help
help:
	@echo 'make tests'
	@echo '       Run pytest unit tests'

tests:
	python3 -m pytest -v
