./clear.sh
echo "-----Building the container-----"
docker-compose build && docker-compose up -d
#./config.sh
