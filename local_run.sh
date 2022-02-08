#!/bin/bash

echo "Running bot .. "
docker-compose -f docker/docker-compose-bot.yml --env-file .env up -d