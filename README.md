Conversion from keepass to vault
--------------------------------

Forked from https://github.com/singuliere/vault-keepass-import/tree/master/vault_keepass_import

Read [the documentation](http://vault-keepass-import.readthedocs.io/).

Adds one option to skip the default metadata with the `--skip-default-metadata` switch. This removes the UUID, time metadata and icon field from the entry when writing to HashiCorp Vault.

It now also runs on newer versions of Python.
