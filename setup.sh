#!/usr/bin/env bash

SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}"); pwd)

python -m venv .venv
$SCRIPT_DIR/.venv/bin/python -m pip install $SCRIPT_DIR
