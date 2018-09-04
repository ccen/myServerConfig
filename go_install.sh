
#install golang1.$version
version=11

if [ ! -d /usr/local/go ]; then
    current_path=`pwd`
    cd ~
    if [ ! -f go1.$version.linux-amd64.tar.gz ]; then
        wget https://storage.googleapis.com/golang/go1.$version.linux-amd64.tar.gz
    fi
    sudo tar -C /usr/local -xzf go1.$version.linux-amd64.tar.gz

    if [ ! -d ~/go ]; then
        mkdir go
        mkdir go/src
        mkdir go/bin
        mkdir go/pkg
    fi
    echo -e "\n#Add by ccen go_install.sh\nexport GOPATH=~/go" >> .profile
    echo -e "export PATH=\$PATH:/usr/local/go/bin:\$GOPATH/bin" >> .profile
    
    source .profile
    rm go1.$version.linux-amd64.tar.gz
    cd ${current_path}
fi


