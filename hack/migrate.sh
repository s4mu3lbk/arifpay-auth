#!/usr/bin/env bash

DB_ENV=$1

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DATABASE="$DIR/database.yml"

export GOTRUE_DB_DRIVER="postgres"
export GOTRUE_DB_DATABASE_URL="postgresql://postgres:postgres@127.0.0.1:5432/gotrue_$DB_ENV?sslmode=disable"
export GOTRUE_DB_MIGRATIONS_PATH=$DIR/../migrations

echo soda -v
soda drop -d -e "$DB_ENV" -c "$DATABASE"
soda create -d -e "$DB_ENV" -c "$DATABASE"
go run main.go migrate -c "$DIR/test.env"
