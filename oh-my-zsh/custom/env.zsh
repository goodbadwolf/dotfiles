export VISUAL=vim
export EDITOR=$VISUAL

if [ ! "$TMUX" = "" ]; then export TERM=xterm-256color; fi

export PATH=$HOME/.local/bin:$PATH
