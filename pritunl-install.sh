# Install on ubuntu 20.04
# link to ubuntu https://releases.ubuntu.com/20.04/ubuntu-20.04.6-live-server-amd64.iso
# Static ip https://linuxconfig.org/how-to-configure-static-ip-address-on-ubuntu-20-04-focal-fossa-desktop-server

sudo tee /etc/apt/sources.list.d/pritunl.list << EOF
deb http://repo.pritunl.com/stable/apt focal main
EOF

# Import signing key from keyserver
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A
# Alternative import from download if keyserver offline
# curl https://raw.githubusercontent.com/pritunl/pgp/master/pritunl_repo_pub.asc | sudo apt-key add -

sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list << EOF
deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse
EOF

curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

sudo apt update
sudo apt --assume-yes upgrade

# WireGuard server support
sudo apt -y install wireguard wireguard-tools

sudo ufw disable

sudo apt -y install pritunl mongodb-org
sudo systemctl enable mongod pritunl
sudo systemctl start mongod pritunl
