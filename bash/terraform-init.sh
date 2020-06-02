#!/usr/bin/env bash

terraform init -backend-config="token=${TF_API_TOKEN}"

if [ $? -eq 0 ]
then
  cat bash/success.sh
  exit 0
else
  cat bash/fail.sh
  exit 1
fi

