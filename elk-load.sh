cd /home/elk/images &&
docker load < kibana.tar;
docker load < elasticsearch.tar;
docker load < logstash.tar;
docker load < filebeat.tar;
docker load < zookeeper.tar;
docker load < kafka.tar;
echo "镜像导入成功，启动elk......................"
systemctl daemon-reload && systemctl start docker && systemctl enable docker.service &&
cd /home/elk/docker-elk &&
docker-compose up -d;
#/home/elk/elk-start.sh
