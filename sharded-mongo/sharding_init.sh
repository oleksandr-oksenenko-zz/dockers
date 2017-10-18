#!/bin/bash

docker exec -it mongo_rs1 bash -c "echo \"rs.initiate({_id:'rs1',members:[{_id:0,host:'localhost:30101'}]})\" | mongo --port 30101"
docker exec -it mongo_rs2 bash -c "echo \"rs.initiate({_id:'rs2',members:[{_id:0,host:'localhost:30201'}]})\" | mongo --port 30201"
docker exec -it mongo_rs3 bash -c "echo \"rs.initiate({_id:'rs3',members:[{_id:0,host:'localhost:30301'}]})\" | mongo --port 30301"

#docker exec -it mongos bash -c "echo \"sh.addShard('rs1/mongo_rs1:30101') && sh.addShard('rs2/mongo_rs2:30201') && sh.addShard('rs3/mongo_rs3:30301') && sh.enableSharding('maindb') && sh.shardCollection('maindb.video',{_id:1})\" | mongo --port 30000"
docker exec -it mongos bash -c "echo \"sh.addShard('rs1/localhost:30101')\" | mongo --port 30000"
docker exec -it mongos bash -c "echo \"sh.addShard('rs2/localhost:30201')\" | mongo --port 30000"
docker exec -it mongos bash -c "echo \"sh.addShard('rs3/localhost:30301')\" | mongo --port 30000"
docker exec -it mongos bash -c "echo \"sh.enableSharding('maindb')\" | mongo --port 30000"
docker exec -it mongos bash -c "echo \"sh.shardCollection('maindb.video',{_id:1})\" | mongo --port 30000"