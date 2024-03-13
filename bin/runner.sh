#!/bin/bash

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

${SCRIPT_DIR}/runner/create_authorized_keys.sh
${SCRIPT_DIR}/runner/open_ports.sh
