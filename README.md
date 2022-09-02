# Conversion from keepass to vault

Forked from https://github.com/singuliere/vault-keepass-import/tree/master/vault_keepass_import

Read [the documentation](http://vault-keepass-import.readthedocs.io/).

Adds one option to skip the default metadata with the `--skip-default-metadata` switch. This removes the UUID, time metadata and icon field from the entry when writing to HashiCorp Vault.

## Installation

The is package requires Python versions 3.7 and newer.

It is recommended to install the packages in a virtual environment.

The easiest way of installing the package is by using the setup script:

```bash
./setup.sh
```

The `vault-keepass-import` executable will be installed/symlinked to `$HOME/local/bin`. This can be added to the `PATH` environment variable to make it easier to call.

## Usage

To import a keepass file, run the following command
```bash
$HOME/local/bin/vault-keepass-import \
  --lowercase \
  --skip-default-metadata \
  --mount-point secret --prefix organizations/<customer name> \
  --password <keepass password> --token <vault token> \
  <path to keepass file>
```

* lowercase: change all path values to lowercase
* skip-default-metadata: removes the KeePass UUID and time metadata from the entries imported into Vault
* prefix: location to put the entries in: put them always into organizations/<customer name> in lower case
* token: a token with access to write the values, can be a root token
