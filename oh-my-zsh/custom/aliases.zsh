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
