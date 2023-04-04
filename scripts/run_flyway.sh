#!/bin/bash
#The script for running migrations locally
BASE_PATH="/home/.../flyway_lab"
ACCOUNT=""
FLYWAY_USER=""
FLYWAY_PASSWORD=""
FLYWAY_DEFAULT_SCHEMA="PUBLIC"
DB_NAME="FlyWay_DB"
WAREHOUSE_NAME="COMPUTE_WH"
ROLE="SYSADMIN"
FLYWAY_URL="jdbc:snowflake://${ACCOUNT}.snowflakecomputing.com/?db=${DB_NAME}&warehouse=${WAREHOUSE_NAME}&role=${ROLE}"

docker run \
  --rm \
  -v "${BASE_PATH}/db/migrations":/flyway/sql \
  -e FLYWAY_USER=${FLYWAY_USER} \
  -e FLYWAY_PASSWORD=${FLYWAY_PASSWORD} \
  -e FLYWAY_DEFAULT_SCHEMA=${FLYWAY_DEFAULT_SCHEMA} \
  -e FLYWAY_URL=${FLYWAY_URL} \
  -e FLYWAY_PLACEHOLDER_REPLACEMENT="true" \
  -e FLYWAY_PLACEHOLDERS_WAREHOUSE=${WAREHOUSE_NAME} \
  -e FLYWAY_PLACEHOLDERS_DB_NAME=${DB_NAME} \
  -e FLYWAY_VALIDATE_MIGRATION_NAMING=true \
  flyway/flyway:9.10.1 $1
