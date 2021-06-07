SRCPATH := $(CURDIR)
PROJECTNAME := $(shell basename $(CURDIR))

define HELP
Manage $(PROJECTNAME). Usage:
-  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -  -
make pre-commit                 - Run pre-commit hooks manually
make deploy-prod                - Deploy the function to prod environment
make deploy-dev                 - Deploy the function to dev environment
make venv                       - Create a fresh virtualenv
make check-venv                 - Verifies the virtualenv
make install                    - Creates a new virtualenv and installs the packages
make clean                      - Clean the virutalenv and other pyc files
endef
export HELP

.PHONY: pre-commit
pre-commit:
	pre-commit run --all-files

.PHONY: deploy-prod
deploy-prod:
	sls deploy -s prod

.PHONY: deploy-dev
deploy-dev:
	sls deploy -s dev


.PHONY: remove-dev
remove-dev:
	sls remove -s dev

.PHONY: remove-prod
remove-prod:
	sls remove -s prod


venv:
	virtualenv venv

check-venv:
	. venv/bin/activate && pip -V &&

install: venv
	. venv/bin/activate && pip install -r requirements.txt && pip install -r requirements-dev.txt

clean:
	rm -rf venv
	find -iname "*.pyc" -delete

all help:
	@echo "$$HELP"
