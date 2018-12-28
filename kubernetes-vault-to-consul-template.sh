#!/bin/sh

token=$(sed -E 's/.*clientToken":[ ]*"([^"]+)\".*/\1/' $CREDENTIALS_PATH/vault-token)
echo -e "vault {\n  token = \"$token\"\n}" > $CREDENTIALS_PATH/config.hcl
