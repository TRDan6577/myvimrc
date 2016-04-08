# myvimrc
A repository for quick transfer of my .vimrc

## Installation

#### If you already have bundles and your own .vimrc but want mine
Delete everything in your .vim/bundle/ directory and your .vimrc

> `rm .vimrc`

> `cd ~/.vim/bundle/`

> `rm -r *`

From here, follow along with the New .vimrc instructions

### New .vimrc

Install [vundle.vim](https://github.com/VundleVim/Vundle.vim) in this directory (package manager)

> `cd ~/.vim/bundle/`

(Note that if .vim/ and or .vim/bundle/ don't exist, create them)

> `git clone https://github.com/VundleVim/Vundle.vim.git`

Download my .vimrc in your home directory

> `cd`

> `git clone https://github.com/trdan6577/myvimrc.git`

Take the .vimrc out of the folder and delete the folder

> `mv myvimrc/.vimrc ~/.vimrc`

> `rm -r myvimrc/`

Install the bundles mentioned in the .vimrc (be patient!!)

> `vim +PluginInstall`

Close that once it finishes installing

Install the essentials needed for [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)

> `sudo apt-get install build-essential cmake python-dev python3-dev clang`

Update the third party code in YCM

> `cd .vim/bundle/YouCompleteMe/`

> `git submodule update --init --recursive`

Install YCM

> `./install.py --clang-completer`

Set up the .ycm_extra_conf.py file by following the instructions within the file.
Basically just change the flags array to the flags you use when compiling a
C-family program and delete the part of the code it tells you to

> `cd third_party/ycmd/cpp/ycm/`

For Python sytax and style checking, install [flake8](https://pypi.python.org/pypi/flake8/)

> `pip install flake8`

If you attempt to use flake8 and get an error AND YOU'VE ALREADY INSTALLED FLAKE8 USING THE ABOVE COMMAND, then (on linux machines) go to

> `cd ~/.vim/bundle/vim-flake8/autoload`

Change line 73 to

> `call s:DeclareOption('flake8_cmd', '', '"~/.local/bin/flake8"')`

You should be all set! Happy coding!
