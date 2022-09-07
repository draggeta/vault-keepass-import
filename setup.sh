#!/usr/bin/env bash

SCRIPT_DIR=$(cd $(dirname "${BASH_SOURCE[0]}"); pwd)

# Create a virtual environment to install the requirements
python3 -m venv .venv
# Install the vault-keepass-import package and its requirements in the virtual environment
$SCRIPT_DIR/.venv/bin/python -m pip install '.[build]'
# Create a binary directory in the user's home directory to store executables in.
mkdir -p $HOME/local/bin

# Build the executable and put it in the binary directory.
$SCRIPT_DIR/.venv/bin/pyinstaller --clean --onefile --collect-all hvac_cli -n vault-keepass-import --distpath $HOME/local/bin $SCRIPT_DIR/vault_keepass_import/main.py
# $SCRIPT_DIR/.venv/bin/pyinstaller --onefile -n vault-keepass-import --distpath $HOME/local/bin $SCRIPT_DIR/vault_keepass_import/main.py

echo "The 'vault-keepass-import' executable has been installed in '$HOME/local/bin/'."
echo "Consider adding this folder to PATH if not already."
