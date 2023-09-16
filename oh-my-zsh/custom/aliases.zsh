alias vim='nvim'
alias vi='nvim'

alias l='lsd -al'
alias ll='lsd -alh'
alias c='clear'

if [ "$(uname)" = "Linux" ]; then
    alias open='xdg-open'
fi

if [ "$(uname)" = "Darwin" ]; then
    alias brew64='arch -arm64 brew'
    alias mpicc64='arch -arm64 mpicc'
    alias mpirun64='arch -arm64 mpirun'
    alias nproc='sysctl -n hw.logicalcpu'
fi

mkdir -p $HOME/.ssh/ctrl
export SUMMIT_CTRL="$HOME/.ssh/ctrl/mmathai_summit_22"
alias summit_open='ssh -nNf -o ControlMaster=yes -o ControlPath=$SUMMIT_CTRL summit'
alias summit_conn='ssh -o ControlPath=$SUMMIT_CTRL summit'
alias summit_exit='ssh -O exit -o ControlPath=$SUMMIT_CTRL summit'

export FRONTIER_CTRL="$HOME/.ssh/ctrl/mmathai_frontier_22"
alias frontier_open='ssh -nNf -o ControlMaster=yes -o ControlPath=$FRONTIER_CTRL frontier'
alias frontier_conn='ssh -o ControlPath=$FRONTIER_CTRL frontier'
alias frontier_exit='ssh -O exit -o ControlPath=$FRONTIER_CTRL frontier'
