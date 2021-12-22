`PATH_TO_DOTFILES=~/dotfiles`

On Mac, ln seems to require absolute paths when making the softlinks.

### Alacritty
`ln -s $PATH_TO_DOTFILES/alacritty ~/.config/alacritty`

### Oh-my-zsh
`ln -s $PATH_TO_DOTFILES/oh-my-zsh/custom ~/.oh-my-zsh/custom`
