docker volume create uptime-kuma
docker run -d --restart=always -p 7004:3001 -v uptime-kuma:/app/data --name uptime-kuma louislam/uptime-kuma:1
