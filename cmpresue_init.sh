# initialize cmpreuse VM

bash xterm_color.sh
bash system_util.sh
bash vim_config.sh
bash go_install.sh

mkdir ~/go/src/github.com
mkdir ~/go/src/github.com/ethereum

bash sshkey_gen.sh
cat ~/.ssh/id_rsa.pub
