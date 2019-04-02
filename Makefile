PYTHON = python3.6

venv:
	@if [ ! -f "venv/bin/activate" ]; then $(PYTHON) -m venv venv ; fi;


setup: venv
	@bash -c "ln -s /usr/lib/python3/dist-packages/gi  venv/lib/python3.6/site-packages"
	@bash -c "source venv/bin/activate"