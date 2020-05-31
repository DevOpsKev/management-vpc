#!/usr/bin/env bash


terragrunt destroy -auto-approve

if [ $? -eq 0 ]
then
  cat ./bash/success.sh
  exit 0
else
  cat ./bash/fail.sh
  exit 1
fi