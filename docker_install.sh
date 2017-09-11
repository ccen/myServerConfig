
# install and config docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
curl -fsSL get.docker.com | sudo sh
sudo sed -i -r "s/(ExecStart=.*)/\1 --registry-mirror=https:\/\/registry.docker-cn.com/" \
    /etc/systemd/system/multi-user.target.wants/docker.service

sudo groupadd docker
sudo usermod -aG docker $USER

sudo systemctl daemon-reload
sudo systemctl enable docker
sudo systemctl start docker
