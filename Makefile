install:
	poetry install

test:
	poetry run pytest

lint:
	poetry run flake8

selfcheck:
	poetry check

check: selfcheck test lint

build: check
	poetry build

.PHONY: install test lint selfcheck check build