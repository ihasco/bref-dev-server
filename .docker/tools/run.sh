#!/bin/bash

set -o allexport
source .env
set +o allexport

COMPOSER_AUTH="{
    \"github-oauth\": {
        \"github.com\": \"${COMPOSER_TOKEN}\"
    }
}"

docker run \
    --rm \
    --interactive \
    --volume $PWD:/app \
    --network ihasco_local \
    --workdir /app \
    --env COMPOSER_AUTH="${COMPOSER_AUTH}" \
    jitesoft/phpunit:8.4 "$@"