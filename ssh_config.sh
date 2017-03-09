
# change ssh port from 22 to 52017
if [ -f /etc/ssh/sshd_config ]; then
    current_path=`pwd`
    cd /etc/ssh/
    sudo cp sshd_config sshd_config.backup
    sudo chmod a-w sshd_config.backup
    sudo sed -i 's/Port 22/Port 52017/' sshd_config
    cd ${current_path}
fi
