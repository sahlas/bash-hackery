
export GIT="/usr/local"
export GIT_BASE="/usr/local/git"
export GIT_HTTP_BACKEND="$GIT_BASE/libexec/git-core/git-http-backend"


if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
  source ~/.git-prompt.sh
  export PS1='\W$(__git_ps1 "(%s)"): '
fi

alias gitorderbranch='git for-each-ref --sort=-committerdate refs/heads/'
alias gitundo='git checkout -- $@'
alias gcm='git checkout master'
alias gckb='git checkout -b $@'
alias gsp='git stash pop'
alias gpull='git pull origin master'



#gatling settings
#export JAVA_HOME="/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/"
export JAVA_HOME='/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home'

# export GATLING_HOME=~/dev/mainline/player-gatling-performance/src
# export GATLING_WORKSPACE=$GATLING_HOME

# alias gatling_recorder='$GATLING_HOME/bin/recorder.sh'
# alias gatling='$GATLING_HOME/bin/gatling.sh'
# alias gatlingHome='cd $GATLING_HOME'
# alias gatcmd='gatlingHome;cd ./bin;./do-gatling-player.sh -d ../player-ids.json -i 1 -r 10 -s random'
# alias gatlingCleanResults='rm -rf ~/IdeaProjects/player-management-performance/gatling/src/user-files/results/*'

alias pse='args=$@;ps -eaf | grep $args'
alias ll='ls -lahG'
alias current='nvm current'
alias gitver='git --version'
alias reload='. ~/.bashrc'
alias res='reset'
alias title='/usr/local/bin/iterm_title.sh $@'


alias gi='grunt integration'
alias gn='grunt system'

# shortcut to stopstuff
alias stopstuff="~/stop_services.sh 0"

# .bashrc shortcuts - I'm in there a lot
alias vb='nohup /Applications/Sublime\ Text\ 2.app/Contents/MacOS/Sublime\ Text\ 2 ~/.bashrc&'
alias sb='source ~/.bash_profile'

# dev/mainline
alias dev='cd ~/dev/mainline'


# git stuff
alias gchk='args=$@;git checkout $args'
alias gitnb='args=$@;git checkout -b $args'
