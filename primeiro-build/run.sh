docker image build -t ex-simple-build .
docker image ls
docker container run -p 80:80 ex-simple-build # Serviço disponível em
http://localhost
# CTRL-C para sair
# sudo chmod +x run.sh