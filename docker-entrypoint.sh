#!/bin/sh

set -e

bundle install

yarn install

rm -f tmp/pids/server.pid

exec "$@"
