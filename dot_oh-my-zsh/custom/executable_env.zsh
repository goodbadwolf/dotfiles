export VISUAL=vim
export EDITOR=$VISUAL

if [ ! "$TMUX" = "" ]; then export TERM=xterm-256color; fi

export PATH=$HOME/.local/bin:$PATH
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"
export PATH=/opt/homebrew/opt/graphviz/bin:$PATH
export PATH=~/projects/git-fat:$PATH
