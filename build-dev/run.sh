docker build -t ex-build-dev .
docker container run --rm -it -v $(pwd):/app -p 80:8000 --name python-server ex-build-dev 
# Serviço disponível em http://localhost