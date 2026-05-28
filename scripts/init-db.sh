#!/bin/bash
# Initialize database for Cryptocurrency Address System

echo "Waiting for MySQL database container to start..."
until docker exec crypto-mysql mysqladmin ping -h "localhost" -u"root" -p"rootpassword" --silent; do
    echo "MySQL is still starting up..."
    sleep 2
done

echo "MySQL is ready! Importing schema and seed data..."
docker exec -i crypto-mysql mysql -u crypto_user -pcryptopass crypto_address_system < ../database/schema.sql
docker exec -i crypto-mysql mysql -u crypto_user -pcryptopass crypto_address_system < ../database/seed.sql

echo "Database successfully initialized!"
