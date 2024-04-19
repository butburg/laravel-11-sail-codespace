#!/bin/bash

echo --- Copy the environment file ...
cp .env.example .env

echo --- Update .env with desired values ...
# Define new values
new_db_connection="DB_CONNECTION=mysql"
new_db_host="DB_HOST=mysql"
new_db_port="DB_PORT=3306"
new_db_database="DB_DATABASE=laravel"
new_db_username="DB_USERNAME=sail"
new_db_password="DB_PASSWORD=password"

# Replace lines in .env.example
sed -i "s/^DB_CONNECTION=.*/${new_db_connection}/" .env
sed -i "s/^# DB_HOST=.*/${new_db_host}/" .env
sed -i "s/^# DB_PORT=.*/${new_db_port}/" .env
sed -i "s/^# DB_DATABASE=.*/${new_db_database}/" .env
sed -i "s/^# DB_USERNAME=.*/${new_db_username}/" .env
sed -i "s/^# DB_PASSWORD=.*/${new_db_password}/" .env

echo "--- Install dependencies (first sail install will take a while) ..."
composer install

echo "--- Start sail containers ..."
./vendor/bin/sail up -d

echo "--- Generate the application key ..."
./vendor/bin/sail php artisan key:generate

echo "--- Install npm packages ..."
./vendor/bin/sail npm install

echo "--- Stop sail containers ..."
./vendor/bin/sail stop

echo "--- SETUP DONE ---"
echo "--- Please start sail and execute the mysql db migration afterwards: ./vendor/bin/sail artisan migrate ---"
