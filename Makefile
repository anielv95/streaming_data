install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	black src tests

lint:
	pylint src tests

test:
	python -m pytest -vv -s --cov=src --cov=tests tests/*.py

test-dev:
	python -m pytest -vv -s --cov=src tests/test_num*.py
