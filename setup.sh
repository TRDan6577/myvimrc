#!/bin/bash

if [ -d ~/.vim/bundle ]; then
    rm -rf ~/.vim/bundle
fi

sudo apt-get install git build-essential cmake python-dev python3-dev clang python-pip -y
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/trdan6577/myvimrc.git
mv myvimrc/.vimrc ~/.vimrc
rm -rf myvimrc/
vim +PluginInstall +qall
cd .vim/bundle/YouCompleteMe/
git submodule update --init --recursive
./install.py --clang-completer
pip install flake8

echo  -e "\033[0;32m[+] Finished automated installation.\033[0m To fully"\
    "complete the installation, set the compiler flags in"\
    "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"\
    "and change line 73 in ~/.vim/bundle/vim-flake8/autoload/flake8.vim to"\
    "call s:DeclareOption\(\'flake8_cmd\', \'\', \'\"~/.local/bin/flake8\"\'\)"
