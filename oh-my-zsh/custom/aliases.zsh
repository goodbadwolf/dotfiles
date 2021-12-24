alias vim='nvim'
alias vi='nvim'

alias l='ls -al'
alias c='clear'

alias brew64='arch -arm64 brew'

if [ "$(uname)" = "Darwin" ]; then
    # OSX specific aliases
    alias nproc='sysctl -n hw.logicalcpu'
fi
