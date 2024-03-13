#!/bin/bash

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

${SCRIPT_DIR}/root/create_runner.sh
