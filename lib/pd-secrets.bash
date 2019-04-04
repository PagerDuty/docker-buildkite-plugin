#!/bin/bash

# Export PagerDuty secrets in to the docker environment
while IFS='=' read -r name _ ; do
  if [[ $name =~ ^(SECRET_[A-Z_]+) ]] ; then
    args+=( "--env" "${name}" )
  fi
done < <(env | sort)
