# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export PYTHONPATH=/Library/Python/2.7/site-packages
export PKG_CONFIG_PATH=/opt/X11/lib/pkgconfig
export EDITOR='vim'

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="jreese"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

export PATH=:~/Code/SitterSquared/macosx/python2.7:/opt/local/bin:/opt/local/sbin:.:$PATH
export PATH=$HOME/.gem/ruby/1.8/bin:/usr/local/mysql/bin:/Applications/MAMP/Library/bin/:/Applications/MAMP/bin/php5/bin/:$PATH

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git tmuxinator vagrant web-search wd phing dircycle sublime sudo)

source $ZSH/oh-my-zsh.sh

export NODE_ENV=localhost

chpwd() { if [ -f ".env" ]; then source .env; fi }
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

export PATH="$PATH:/Users/nick/Code/FlowerCollective/Web/www/app/Console"

# Customize to your needs...
alias editzsh='mate ~/.zshrc'

alias gs='git status'
alias fs='foreman start localhost'
alias hl='heroku logs -t'
alias hp='git push heroku master'
alias hr='heroku ps:restart web'
alias hg='history | grep -i'
alias zshe='vim ~/.zshrc'
alias vhostse='vim /Applications/MAMP/conf/apache/extra/httpd-vhosts.conf'
alias sshe='vim ~/.ssh/config'
alias zshrce='vim ~/.zshrc'
alias phplog='tail -f -n1000 /var/log/php/php.log'
alias etce='sudo subl /etc/hosts'
alias hostse='sudo subl /etc/hosts'
alias bu='mosh nick@69.164.195.147'
alias ubu='cd ~/Code/Busey.me/www/;jekyll build;rsync -crz --delete _site/ deploy@busey.me:/var/www/busey.me/'
alias gitdiff='git diff --patience --ignore-space-at-eol -b -w --ignore-blank-lines'
alias pdl='ssh nickabusey@pedalbmx.com'
alias 'vagrant start'='vagrant up'
alias 'vagrant stop'='vagrant halt'
alias v=vim
copykeys () { cat ~/.ssh/id_rsa.pub | ssh $1 'cat >> .ssh/authorized_keys' }

alias crab='~/Code/CrabHome/CrabExe/rlwrap -m$'\''\n'\'' -b '\'' .'\'' -e '\'''\'' -i -f ~/Code/CrabHome/CrabExe/crab_completions -b '\'' .(,'\'' -H ~/Code/CrabHome/CrabData/crab_history --pass-sigint-as-sigterm ~/Code/CrabHome/CrabExe/crab -wrapped'

alias fcserv='ssh flowerserver@71.218.211.219'
alias fcmonit='sudo ssh flower@serv.theflowercollective.com -L 2813:localhost:2812'
alias grmonit='sudo ssh deploy@cropcircle.io -L 2814:localhost:2812'

alias nbenc='zip -r /Volumes/Gstick/protected protected;openssl des3 -in /Volumes/Gstick/protected.zip -out /Volumes/Gstick/NB.txt;rm /Volumes/Gstick/protected.zip;'
alias nbdel='rm -rf /Volumes/Gstick/protected;'
alias nbdec='openssl des3 -d -in /Volumes/Gstick/NB.txt -out /Volumes/Gstick/protected.zip;unzip /Volumes/Gstick/protected.zip -d /Volumes/Gstick;rm /Volumes/Gstick/protected.zip;rm /Volumes/Gstick/NB.txt'

export PATH="/usr/local/sbin:$PATH"
