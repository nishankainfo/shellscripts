dockerstatus=$(systemctl status docker | awk '/Active/ { print $3 }' | tr -d "[()]")
dockerversion=$(docker -v | awk '/version/ {print $3}' | tr -d ",")
echo "the docker status is: $dockerstatus"
echo "the docker version is: $dockerversion"

