# env
Automated environment setup

## PreReqs 
### macOS 

    #Install git via brew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install git
    
## Installing
   
    git clone https://github.com/varokas/env.git ~/.env
    cd ~/.env
    
    
## Misc
Adding users in centos

    adduser username
    passwd username
    usermod -aG wheel username
