docker-compose up -d
echo "Aguardando o banco de dados inicializar"
sleep 5

echo "Criando  o banco de dados"
docker-compose exec db psql -U postgres -f /scripts/init.sql

echo "Checando o banco de dados"
docker-compose exec db psql -U postgres -f /scripts/check.sql


docker-compose down