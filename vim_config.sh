
# config vim environment
if [ ! -d ~/.vim/colors ]; then
  if [ ! -d ~/.vim ]; then
    mkdir ~/.vim
  fi
  mkdir ~/.vim/colors
fi

if [ ! -f ~/.vim/colors/molokai.vim ]; then
    wget -P ~/.vim/colors https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim
fi

echo -e "\
syntax on \n\
set nu \n\
set ai \n\
set showmatch \n\
set ruler \n\
set incsearch \n\
set expandtab \n\
set tabstop=4 \n\
set softtabstop=4 \n\
set shiftwidth=4 \n\
set pastetoggle=<F9> \n\
colorscheme molokai" > ~/.vimrc

