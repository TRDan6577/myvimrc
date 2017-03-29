mkdir -p ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd
git clone https://github.com/trdan6577/myvimrc.git
mv myvimrc/.vimrc ~/.vimrc
rm -rf myvimrc/
vim +PluginInstall
sudo apt-get install build-essential cmake python-dev python3-dev clang
cd .vim/bundle/YouCompleteMe/
git submodule update --init --recursive
./install.py --clang-completer
vim third_party/ycmd/cpp/ycm/.ycm_extra_conf.py
pip install flake8
vim ~/.vim/bundle/vim-flake8/autoload/flake8.vim
