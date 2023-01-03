docker image build -t ex-build-copy .
docker container run -p 80:80 ex-build-copy 
# Serviço disponível em http://localhost