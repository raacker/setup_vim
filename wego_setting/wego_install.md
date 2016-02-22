First, install golang golang-golang

Next, add this line to bash.bashrc
It is way to setting GOPATH

** export GOPATH=$HOME/gocode **

and make directory gocode in $HOME.

go get -u github.com/schachmat/wego

and get API from 

https://developer.worldweatheronline.com/auth/register

Add these lines 

export WEGOPATH=$HOME/gocode/bin/
export PATH=$PATH:$GOPATH:$WEGOPATH

modify $HOME/.wegorc and region. 

just run wego!
