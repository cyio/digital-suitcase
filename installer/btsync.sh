sudo sh -c 'echo "dettp://linux-packages.getsync.com/btsync/deb btsync non-free" > /etc/apt/sources.list.d/btsync.list'
wget -qO ttp://linux-packages.getsync.com/btsync/key.asc | sudo apt-key add -                                           
sudo apt update
sudo apt install btsync

sudo chown oaker:btsync shared_folder
sudo chmod 2775 shared_folder        
sudo usermod -a -G btsync oaker      
sudo service btsync start
"localhost:8888"
