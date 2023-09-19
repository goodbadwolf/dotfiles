`PATH_TO_DOTFILES=~/dotfiles`

On Mac, ln seems to require absolute paths when making the softlinks.

### Alacritty
`ln -s $PATH_TO_DOTFILES/alacritty ~/.config/alacritty`

### Awesome vimrc
`ln -s $PATH_TO_DOTFILES/awesome_vimrc/my_configs.vim ~/.vim_runtime/my_configs.vim`

### Neovim
`ln -s $PATH_TO_DOTFILES/nvim ~/.config/nvim`

### Oh-my-zsh
```
ln -s $PATH_TO_DOTFILES/oh-my-zsh/zshenv ~/.zshenv
ln -s $PATH_TO_DOTFILES/oh-my-zsh/zshrc ~/.zshrc

rm -rf ~/.oh-my-zsh/custom
ln -s $PATH_TO_DOTFILES/oh-my-zsh/custom ~/.oh-my-zsh/custom
```

### Tmux
`ln -s $PATH_TO_DOTFILES/tmux/tmux.conf ~/.tmux.conf`
