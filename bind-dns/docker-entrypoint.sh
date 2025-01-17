#!/bin/bash

set -u

# User params
USER_PARAMS=$@

# Internal params
RUN_CMD="/usr/sbin/named -u named -c /etc/named.conf -f -d 1 -g"

#######################################
# Echo/log function
# Arguments:
#   String: value to log
#######################################
log() {
  if [[ "$@" ]]; then echo "[`date +'%Y-%m-%d %T'`] $@";
  else echo; fi
}

# Launch
log $RUN_CMD
$RUN_CMD

# Exit immidiately in case of any errors or when we have interactive terminal
if [[ $? != 0 ]] || test -t 0; then exit $?; fi
log