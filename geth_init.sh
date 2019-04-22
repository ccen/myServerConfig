# initialize geth repo

sudo mkdir /geth_data
sudo mount /dev/sdc1 /geth_data

cd ~/go/src/github.com/ethereum
git clone blockchainmsra@vs-ssh.visualstudio.com:v3/blockchainmsra/Banxian/PreplayGeth
mv PreplayGeth go-ethereum
cd go-ethereum
git checkout feature-cmpreuse

go install github.com/ethereum/go-ethereum/cmd/geth
echo "nohup geth --rpc --datadir /geth_data --verbosity 1"
