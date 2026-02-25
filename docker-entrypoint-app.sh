#!/bin/sh
set -e

echo "Running database migrations..."
node /migrator/node_modules/.bin/prisma migrate deploy \
  --schema=/migrator/node_modules/@trycompai/db/dist/schema.prisma

echo "Migrations complete. Starting app..."
exec node apps/app/server.js
