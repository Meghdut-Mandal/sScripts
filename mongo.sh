sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list << EOF
deb https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse
EOF
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv E162F504A20CDF15827F718D4B7C549A058F8B6B
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A
sudo apt-get update
sudo apt-get --assume-yes install mongodb-server
sudo systemctl start  mongodb
sudo systemctl enable mongodb
