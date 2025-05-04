
# Virtual environment directory
VENV := .venv
PYTHON := python3

.PHONY: init serve build clean deploy-gh-deploy

# Initialize the project: create virtualenv and install dependencies
init:
	$(PYTHON) -m venv $(VENV)
	. $(VENV)/bin/activate && pip install --upgrade pip && pip install -r requirements.txt

# Start local development server
serve:
	. $(VENV)/bin/activate && mkdocs serve

# Build the static site
build:
	. $(VENV)/bin/activate && mkdocs build

# Deploy to gh-deploy branch manually
deploy-gh-deploy:
	git checkout gh-deploy || git checkout -b gh-deploy
	rm -rf *
	cp -r site/* .
	ouch .nojekyll
	git add .
	git commit -m "Manual deploy to gh-deploy"
	git push origin gh-deploy
	git checkout main

# Clean the generated site directory
clean:
	rm -rf site
