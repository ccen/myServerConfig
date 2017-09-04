
# install bitcoind dependency

sudo apt-get install build-essential
sudo apt-get install libgtk2.0-dev
sudo apt-get install libssl-dev

if [ ! -d ~/util ]; then
  mkdir ~/util
fi

current_path=`pwd`
cd ~/util
wget http://miniupnp.free.fr/files/download.php?file=miniupnpc-1.5.tar.gz -O miniupnpc-1.5.tar.gz
wget http://download.oracle.com/berkeley-db/db-4.7.25.NC.tar.gz
wget http://sourceforge.net/projects/boost/files/boost/1.57.0/boost_1_57_0.tar.gz

tar -xzvf miniupnpc-1.5.tar.gz
cd miniupnpc-1.5
make
sudo make install

cd ~/util
tar -xzvf db-4.7.25.NC.tar.gz
cd db-4.7.25.NC/build_unix
../dist/configure --enable-cxx
make

cd ~/util
tar -xzvf boost_1_57_0.tar.gz
cd boost_1_57_0
sudo ./bootstrap.sh
sudo ./bjam install

cd ${current_path}

