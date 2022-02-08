#!/bin/bash

echo "Building bot .. "
docker build --rm -t template_telegram_bot:1 .
docker images