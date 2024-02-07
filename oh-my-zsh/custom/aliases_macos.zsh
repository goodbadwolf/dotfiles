if [ "$(uname)" = "Darwin"  ]; then
    alias brew64='arch -arm64 brew'
    alias mpicc64='arch -arm64 mpicc'
    alias mpirun64='arch -arm64 mpirun'
    alias nproc='sysctl -n hw.logicalcpu'
fi
