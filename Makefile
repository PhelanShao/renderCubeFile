VENV := venv

install: requirements.txt
	python3.11 -m venv $(VENV)
	./$(VENV)/bin/pip install --upgrade pip
	./$(VENV)/bin/pip install -r requirements.txt

test:
	PYTHONPATH=. ./$(VENV)/bin/pytest

clean:
	./$(VENV)/bin/python3 -m black renderCubeFile.py
	./$(VENV)/bin/python3 -m black src/cubeFile.py
	./$(VENV)/bin/python3 -m black src/inputFile.py

.PHONY: install test clean
