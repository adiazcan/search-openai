#!/bin/bash

# Load environment variables from .env file
if [ -f .env ]
then
  export $(grep -v '^#' .env | xargs)
fi

echo 'Installing dependencies from "requirements.txt" into virtual environment'
#./scripts/.venv/bin/python -m pip install -r scripts/requirements.txt
python -m pip install -r requirements.txt
