#!/usr/bin/env bash

branch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')

hash=$(git rev-parse --verify HEAD)

status=$(cat deployment.status)

branchVar="git_branch=${branch}"

hashVar="git_hash=${hash}"

deployStatusVar="deploy_status=${status}"

terraform apply -var "$branchVar" -var "$hashVar" -var "$deployStatusVar" -auto-approve

if [ $? -eq 0 ]
then
  cat ../bash/success.sh
  exit 0
else
  cat ../bash/fail.sh
  exit 1
fi

