docker run --name db -d mongo:4.0 --smallfiles --replSet rs0 --oplogSize 128
docker exec -ti db mongo --eval "printjson(rs.initiate())"
docker run --name rocketchat -p 7005:3000 --link db --env ROOT_URL=http://localhost:7005 --env MONGO_OPLOG_URL=mongodb://db:27017/local -d rocket.chat
