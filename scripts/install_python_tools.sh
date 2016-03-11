#!/bin/bash

pip install virtualenv

# create virtual environment
virtualenv .venv
source .venv/bin/activate

pip install -r requirements.txt
