echo "deb [trusted=yes] https://apt.fury.io/caddy/ /" \
    | sudo tee -a /etc/apt/sources.list.d/caddy-fury.list
sudo apt update
sudo apt install caddy -y 
echo Caddy FileServer at http://"$(dig +short myip.opendns.com @resolver1.opendns.com)":8000

caddy file-server -root /home/ubuntu/ -listen 0.0.0.0:8000 -browse 
