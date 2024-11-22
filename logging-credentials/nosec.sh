#!/usr/bin/env bash

LOG_FILE="/var/log/secured.log"

log_message() {
  local LOG_LEVEL=$1
  local MESSAGE=$2
  local TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
  local CREDENTIALS=$(cat ../credentials.txt | base64 -c)

  echo "$TIMESTAMP [$LOG_LEVEL] $MESSAGE $CREDENTIALS" >> "$LOG_FILE"
}

# very secure because only the developer knows the credentials
DEBUG=true
if [ "$DEBUG" == true ]; then
  log_message "DEBUG" "Debugging is enabled."
fi
