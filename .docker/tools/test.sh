#!/usr/bin/env bash

DIR=$(dirname "$0")

${DIR}/composer.sh run test "$@"
