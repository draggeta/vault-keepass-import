#!/usr/bin/env bash

SCRIPT_DIR=$(dirname "${BASH_SOURCE[0]}")

cd $SCRIPT_DIR

python -m venv .venv
.venv/bin/python -m pip install -r ./requirements.txt
pyinstaller --onefile --clean ./vault_keepass_import/main.py
deactivate
