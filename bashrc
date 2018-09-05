# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# use gpip to install global
gpip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}

# load dev, but only if present and the shell is interactive
if [[ -f /opt/dev/dev.sh ]] && [[ $- == *i* ]]; then
  source /opt/dev/dev.sh
fi

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/go/bin:$PATH

export GOPATH=$HOME
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH

export RUSTBIN=~/.cargo/bin directory
export PATH=$RUSTBIN:$PATH

export FLUTTERBIN=$HOME/src/flutter/bin
export PATH=$FLUTTERBIN:$PATH

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
