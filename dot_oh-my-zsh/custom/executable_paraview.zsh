export PATH=$HOME/apps/ParaView/current/bin:$PATH
alias paraview='cd $HOME; setsid $HOME/apps/ParaView/current/bin/paraview >> $HOME/.paraview.log 2>&1 &'
