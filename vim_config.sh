
# config vim environment
if [ ! -d ~/.vim/colors ]; then
  if [ ! -d ~/.vim ]; then
    mkdir ~/.vim
  fi
  mkdir ~/.vim/colors
fi

wget -P ~/.vim/colors https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim

echo -e "\
syntax enable \n\
syntax on \n\
set nu \n\
colorscheme molokai" > ~/.vimrc

