##################
### MY ALIASES ###
##################

# git commamands simplified
#alias gst='git status'
#alias gco='git checkout'
#alias gci='git commit'
#alias grb='git rebase'
#alias gbr='git branch'
#alias gad='git add -A'
#alias gpl='git pull'
#alias gpu='git push'
#alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
#alias glg2='git log --date-order --all --graph --name-status --format="%C(green)%H%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# ls alias for color-mode
alias lh='ls -lhaG'

# lock computer
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'

# hibernation and sleep settings
alias hibernate='sudo pmset -a hibernatemode 25'
alias sleep='sudo pmset -a hibernatemode 0'
alias safesleep='sudo pmset -a hibernatemode 3'
alias smartsleep='sudo pmset -a hibernatemode 2'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# directory favs
alias ampps='cd /Applications/AMPPS/www'
alias proj='cd ~/Documents/Projects'

# simple ip
alias ip='ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\ -f2'
# more details
alias ip1="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
# external ip
alias ip2="curl -s http://www.showmyip.com/simple/ | awk '{print $1}'"

# grep with color
alias grep='grep --color=auto'

# proxy tunnel
#alias proxy='ssh -D XXXX -p XXXX USER@DOMAIN'
# ssh home
#alias sshome='ssh -p XXXX USER@DOMAIN'

# processes
#alias ps='ps -ax'

# refresh shell
alias reload='source ~/.bash_profile'

###############################
### ENVIRONMENTAL VARIABLES ###
###############################

# Add homebrew sbin to PATH variable
export PATH="$(brew --prefix homebrew/php/php55)/bin:$PATH"

if [ -f `brew --prefix`/etc/bash_completion ]; then
        . `brew --prefix`/etc/bash_completion
fi

# Add personal bin to PATH variable
#export PATH=$PATH:/Users/Taylor/bin    # May be redundant; check ~/.bash_profile, /etc/profile, /etc/paths, /etc/bashrc

# Show dirty state in prompt when in Git repos
export GIT_PS1_SHOWDIRTYSTATE=1

# Point to the right source for __git_ps1 due to homebrew
source /usr/local/etc/bash_completion.d/git-prompt.sh

# Change prompt
PS1_OLD=${PS1}
export PS1='\[\033[1;92m\]\!\[\033[0m\] \[\033[0;93m\]\u\[\033[0m\]:\[\033[4;97m\]\W\[\033[0m\] \[\033[0;36m\]$(__git_ps1 "(%s)")\[\033[0m\]$ '
