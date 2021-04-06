sudo apt -y install axel aria2
cd /home/
sudo axel -a -n 3 https://ah.potassium.workers.dev/0:/dat.gz 
sudo tar -xzf dat.gz 
sudo rm dat.gz

