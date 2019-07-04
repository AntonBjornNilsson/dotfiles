cp .tmux.conf ~/.tmux.conf
echo 'moved .tmux.conf'
cp .vimrc ~/.vimrc
echo 'moved .vimrc'
cp .zshrc ~/.zshrc
echo 'moved .zshrc'
cp .gitignore ~/.gitignore
echo 'moved .gitignore'
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo 'installed Vundle'

echo 'Install complete, enjoy'
