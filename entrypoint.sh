#!/bin/bash
set -o nounset -o pipefail -o errexit

if [ "$1" = 'supervisord' ]; then

  # write some scripts here

  echo 'starting bot'
fi
exec "$@"
