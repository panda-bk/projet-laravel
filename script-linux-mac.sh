#!/bin/bash
echo Iniciando o Docker
docker-compose up -d

echo 
docker exec -it projeto-app composer install

echo Gerando key
docker exec -it projeto-app php artisan key:generate

echo Executando Migrate/Seeds
docker exec -it projeto-app php artisan migrate --seed