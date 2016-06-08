# Docker + pgpool2 + Consul Template

docker run -p 9999:9999 -e POSTGRES_USER=my_user -e POSTGRES_PASSWORD=password123 bdwilliams/docker-pgpool2-consul-template

or

clone this repo and build first:

docker build -t bdwilliams/docker-pgpool2-consul-template .
docker run -p 9999:9999 -e POSTGRES_USER=my_user -e POSTGRES_PASSWORD=password123 bdwilliams/docker-pgpool2-consul-template