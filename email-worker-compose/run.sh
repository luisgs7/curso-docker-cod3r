#!/bin/bash

# comando para listar os banco de dados
docker-compose exec db psql -U postgres -c '\l'
