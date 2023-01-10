#!/bin/bash

# Listando os dados no banco de dados email
docker-compose exec db psql -U postgres -d email_sender -c "select * from emails"