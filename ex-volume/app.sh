#!/bin/bash

docker container run -p 8080:80 -v $(pwd)/html:/usr/share/nginx/html nginx

# Executar este comando para carregar a página html