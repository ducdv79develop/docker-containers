# up
docker-compose -f api/docker-compose.yml up -d
docker-compose -f app/docker-compose.yml up -d
docker-compose -f ../../docker/nginx/docker-compose.yml up -d