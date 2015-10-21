[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
[[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh"  && . ~/.nvm/nvm.sh # This loads node
. ~/.nvm/nvm.sh

export GIT="/usr/local"
export GIT_BASE="/usr/local/git"
export GIT_HTTP_BACKEND="$GIT_BASE/libexec/git-core/git-http-backend"

export PATH="/usr/local/heroku/bin:$GIT:$GIT_BASE/bin:$HOME/.rvm/bin:$PATH"

export COVERAGE=true;

if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
  source ~/.git-prompt.sh
  export PS1='\W$(__git_ps1 "(%s)"): '
fi

echo `. ~/.nvm/nvm.sh`
nvm use v0.10.35
nvm alias default v0.10.35
echo `nvm current`
export NODE_ENV=development



alias xc='xcrun simctl list'
alias rc='requiresafe check'
alias xi='wg;cd ./xidontpanic'
alias xibin='wg;cd ./xidontpanic/bin'
alias exp='wg;./xidontpanic/bin/www'
alias dpanic='ssh dontpanic@xidontpanic'
alias pcmserver='ssh -i ~/.ssh/topperharley.pem ubuntu@ec2-54-242-189-181.compute-1.amazonaws.com'
alias pcmhttp='wg;cd player-competitive-metrics/players;python -m SimpleHTTPServer'
alias ec2-pcm-private='ssh -i ~/.ssh/qa-player-service.pem ubuntu@10.96.215.125'


export mediaApiHost='bravoapp03.qanet.local:18080'
#creds for 992396400
export mediaApiToken='qRU0pZYMVYN2IvCOfIPgnXuOUQbTVeqNz_R_Wo1nvAs.'
export mediaApiWriteToken='Nv2zzqJUrs68u0iG_0ouD7Cjtp5T_vF3L7oMBYlWvk0.'
export videoId='1020367677001'
export sharee_account_ids=[507017973001,1138423889,1137972973],


export PLAYERMANAGEMENT_NGINX=false
export USE_NGINX=false

export PLAYER_MANAGEMENT_LOGGING_LEVEL=debug
export PLAYER_MANAGEMENT_LOGGING_PATH=~/debug/logs
#export PLAYERMANAGEMENT_MODE=preview

# Tour Settings
#export ACCOUNT_ID=3537782565001
#export EMAIL=bsahlas@brightcove.com
# 984022b0-95bd-4540-8a78-50b03aa4bc5e and secret tMBEeEIENjx1iyirmVftFlBaIxRWdcmYCe9DaqXYZU-sLQPUOfLJpkpY5VBdo22XQUone3I2zYOXSmAUkoLpfw

export ACCOUNT_ID_PERF=1137972973
export ACCOUNT_ID_PERF_ALT=1321442667
export ACCOUNT_ID_AUTO=3813322331001
export ACCOUNT_ID=507017973001
export DEFAULT_ACCOUNT_ID=507017973001
export ALT_ACCOUNT_ID=992396400
export EMAIL=dontpanic@brightcove.com
export dpanicpwd=p4n1c!
# find /Users/bsahlas/dev/mainline/topperharley/test/common/tmp/ -name "*" -mtime +7 -exec rm -rf {} \;
# find /Users/bsahlas/dev/mainline/topperharley/test/common/tmp/ -name "*" -mtime +7 -exec rm -rf {} \;
alias deletedbs='find /home/dontpanic/backup/player-competitive-metrics -name "*.gz" -mtime +30 -exec rm -f {} \;'
export PERFORM_ACCOUNT_ID=30318650174202
export PERFORM_EMAIL=dontpanic+perform@brightcove.com
export PERFORM_PWD=joejoe
export perform_client_id=6974cbb2-1db2-40fa-a8bd-a66adfdbd181
export perform_client_secret=a1bel9PJrCUFxoyC3YW7wAPsE6M009pP3uWsuGrI4xq4Q2P-l8SFnM0vBk1Jt9Cywl0UgeQK4WH9WD72lKH6Rw

alias gitorderbranch='git for-each-ref --sort=-committerdate refs/heads/'
alias gitundo='git checkout -- $@'
alias gcm='git checkout master'
alias gckb='git checkout -b $@'
alias gsp='git stash pop'
alias gpull='git pull origin master'
alias queue-cleaner='wg;cd video-cloud-sync-worker/bin;./queue_cleaner.js -f -q https://sqs.us-east-1.amazonaws.com/063298615075/bsahlas-playerbuild-development-pending'


export qa_client_secret=LZIBRhYY4z-y687pI1Efn9wwe1OQmlF7d1q1-Aw5hoRhynlfS34cELfTMBTf9wITH-Jv9iSNII1oipHZ3fs-3Q
export qa_client_id=be70c39b-2c0e-40c5-b568-3fb9d8beacfb

alias did='di create -u dontpanic+systemauto@brightcove.com -w joejoe -a $QA_ACCOUNT_ID'
alias diq='di create -e q -u dontpanic+systemauto@brightcove.com -w joejoe -a $QA_ACCOUNT_ID'
alias dilq='di list -e q -u dontpanic+systemauto@brightcove.com -w joejoe -a $QA_ACCOUNT_ID'
alias dis='di create -e s -u dontpanic+systemauto@brightcove.com -w joejoe -a $PROD_ACCOUNT_ID'
alias dip='di create -e p -u dontpanic+systemauto@brightcove.com -w joejoe -a $PROD_ACCOUNT_ID'

alias swaphosts='~/swaphosts.sh $@'
alias qasystest='NODE_ENV=qa SYSTEM_ACCOUNT_ID=3813322331001 grunt system'
alias devsystest='th;NODE_ENV=development SYSTEM_ACCOUNT_ID=3813322331001 grunt system'
alias devexpress='cd ~/dev/mainline/xidontpanic/bin;env=development ./system-test.sh'
alias qaexpress='cd ~/dev/mainline/system-test-express/bin;env=qa ./system-test.sh'
alias stagingexpress='cd ~/dev/mainline/system-test-express/bin;env=staging ./system-test.sh'
alias stagingsystest='NODE_ENV=staging SYSTEM_ACCOUNT_ID=3813322331001 grunt system'
alias productionsystest='NODE_ENV=production SYSTEM_ACCOUNT_ID=3813322331001 grunt system'

# start mongodb and player-competitive-metrics-heroku
#alias fstart='mstart;wg;cd player-competitive-metrics-heroku;foreman start'

#gatling settings
#export JAVA_HOME="/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/"
export JAVA_HOME='/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home'


export GATLING_HOME=~/dev/mainline/player-gatling-performance/src
export GATLING_WORKSPACE=$GATLING_HOME

alias gatling_recorder='$GATLING_HOME/bin/recorder.sh'
alias gatling='$GATLING_HOME/bin/gatling.sh'
alias gatlingHome='cd $GATLING_HOME'
alias gatcmd='gatlingHome;cd ./bin;./do-gatling-player.sh -d ../player-ids.json -i 1 -r 10 -s random'
alias gatlingCleanResults='rm -rf ~/IdeaProjects/player-management-performance/gatling/src/user-files/results/*'
function set_test_env {
	access_token_json=`curl -i --user $public_client_id:$public_client_secret -d 'grant_type=client_credentials' "https://oauth.brightcove.com/v4/access_token"`
}

alias setTestEnv='args=$@;echo git diff $args'

# Debug
export DEBUG=*

alias pse='args=$@;ps -eaf | grep $args'
alias ll='ls -lahG'
alias current='nvm current'
alias gitver='git --version'
alias reload='. ~/.bashrc'
alias res='reset'
alias title='/usr/local/bin/iterm_title.sh $@'
alias tdog='tail -f /var/log/datadog/dogstatsd.log'

#
# set Don't Panic's project mainline branch root
#
function __pwd () { cd ~/dev/mainline; echo `pwd`; }
mainline=`__pwd`

# A bunch of cd shortcuts
alias wg='cd ~/dev/mainline' # My work directory

alias th='wg; cd topperharley'
alias ths='th; cd scripts'
alias gu='th;grunt unit'
alias dzi='dz; cd irving-s'

# Shortcuts to start things
alias mstart='cd /usr/local/bin;./mongod --dbpath=$mainline/mongodata/data/db & -nohup'
alias mdbdir='cd /usr/local/bin;'
alias istart='dzi; bin/startup.sh'

alias 0dstart='dz; istart; sleep 7; export NODE_ENV=development; export AUTH_REQUIRED=true; dstop; ./node_modules/pm2/bin/pm2 flush; sleep 2; HOME=/Users/bsahlas/dev/mainline/dangerzone/logs ./node_modules/pm2/bin/pm2 start git-hooks/src/pre-receive.js --name pre-receive -i 1 -x; nodemon --watch src src/dangerzone.js'
alias 0tstart='th; sleep 30; export NODE_ENV=development; export AUTH_REQUIRED=true; export PLAYERMANAGEMENT_NGINX=false; tstop ./node_modules/pm2/bin/pm2 flush; sleep 2; npm start'
alias 0fstart='th; sleep 30; export NODE_ENV=development; node ./src/workers/finished.js'
alias 0bpwstart='bpw; sleep 45; export NODE_ENV=development; node ./lib/index.js'
alias 0testEnv='sleep 60; di create; sleep 30; di listEmbedStatus;di deletePlayer'


alias dstart='dz; istart; export NODE_ENV=development; export AUTH_REQUIRED=true; dstop; ./node_modules/pm2/bin/pm2 flush; sleep 2; HOME=/Users/bsahlas/dev/mainline/dangerzone/logs ./node_modules/pm2/bin/pm2 start git-hooks/src/pre-receive.js --name pre-receive -i 1 -x; nodemon --watch src src/dangerzone.js'
alias tstart='th; export NODE_ENV=development; export AUTH_REQUIRED=true; export PLAYERMANAGEMENT_NGINX=false; tstop ./node_modules/pm2/bin/pm2 flush; sleep 2; npm start'
alias fstart='th; export NODE_ENV=development; node ./src/workers/finished.js'
alias bpwstart='bpw; export NODE_ENV=development; node ./lib/index.js'
alias testEnv='di create; sleep 30; di listEmbedStatus;di deletePlayer'


#alias dstart='dz; export AUTH_REQUIRED=true; nodemon --watch src src/dangerzone.js'
#alias pre-receive='dz; export AUTH_REQUIRED=true; nodemon --watch src git-hooks/src/pre-receive.js'

alias pm2procs='ps -ea | grep -i pm2'

alias nstart='th;sudo nginx -c ./etc/nginx-local.conf'
alias nstop='sudo nginx -s stop'

alias dif='args=$@;git diff $args'
alias dz='wg;cd dangerzone'

#alias startDangerzone="wg;cd dangerzone; export AUTH_REQUIRED=false; ./bin/shutdown.sh; ./node_modules/pm2/bin/pm2 start git-hooks/src/pre-receive.js --name pre-receive -i 1 -x; nodemon --watch src src/dangerzone.js"
#alias startDangerzone='wg;cd dangerzone; export AUTH_REQUIRED=true; ./bin/shutdown.sh; HOME=/Users/bsahlas/dev/mainline/dangerzone/logs ./bin/startup.sh; nodemon --watch src src/dangerzone.js'
#alias startDangerzone="wg;cd dangerzone; export AUTH_REQUIRED=false; ./bin/shutdown.sh; ./bin/startup.sh; nodemon --watch src src/dangerzone.js"
#alias startDangerzone="wg;cd dangerzone; export AUTH_REQUIRED=false; ./bin/shutdown.sh; npm start"

alias dzs='dz; cd scripts'
alias cli='wg; cd batch-player-publish-cli'
alias bpw='wg; cd batch-player-publish-worker'
alias bpp='wg; cd batch-player-publish-pending-purge-worker'
alias bw='wg; cd player-service-billing-worker'
alias vcsw='wg; cd video-cloud-sync-worker'
alias psc='wg; cd player-service-common'
alias ch='wg;cd chef'
alias svt='wg; cd single-video-template'
alias pcmh='wg; cd player-competitive-metrics-heroku'
alias pcm='wg; cd player-competitive-metrics'

# Shortcuts to stop things
alias mstop='kill -KILL `pgrep mongod`'
alias tstop='th; ./bin/shutdown.sh;'
alias dstop='dz; ./bin/shutdown.sh'
alias istop='dzi; bin/shutdown.sh'
alias gi='grunt integration'
alias gn='grunt system'

# shortcut to stopstuff
alias stopstuff="~/stop_services.sh 0"

# .bashrc shortcuts - I'm in there a lot
alias vb='nohup /Applications/Sublime\ Text\ 2.app/Contents/MacOS/Sublime\ Text\ 2 ~/.bashrc&'
alias sb='source ~/.bash_profile'

# dev/mainline
alias dev='cd ~/dev/mainline'

# Test scripts
alias di='args=$@; ths;./doit.js $args'
alias diles='args=$@; ths;./doit.js listEmbedStatus -e $args'
alias dx='args=$@; dzs;./doit.js $args'
export vcarg='{"name":"VC_Sample_Player","configuration":{"video_cloud":{"video":"30306048651202"}}}'
alias divc='args=`echo $vcarg`; di create%$args;'

alias sd='args=$@; ths;./searchDataGenerator.js $args'
alias sdw='args=@; ths;sd -y dataWipe; clear; $args'
alias xx='args=@; sd -y createPlayer -c 3 -r $args'
alias yy='sd -y createEmbed -c 3 -r $args'
alias lti='args=$@; ths; ./loadTestIt.sh $args'
alias qi='args=$@; cli; cd scripts;./queueit.js $args'

# Billing #
alias bwstart='cd $mainline/player-service-billing-worker;npm start'
alias bwstop='cd $mainline/player-service-billing-worker;npm stop'

# video-cloud-sync-worker
alias vcswstart='vcsw;npm start'
alias vcswstop='vcsw;npm stop'


# queue-cleaner
#alias queue-cleaner='args=$@; vcsw;cd bin;./queue_cleaner.js -f -q https://sqs.us-east-1.amazonaws.com/063298615075/bsahlas-playerbuild-development-pending $args'

# Run code coverage (only a few projects are instrumented)
alias ccov='th;istanbul cover node_modules/mocha/bin/_mocha'
alias cover='th;istanbul cover node_modules/mocha/bin/_mocha tests/unit/**/*.js'

# pm2 aliases
alias pm2='args=$@; $mainline/topperharley/node_modules/pm2/bin/pm2 $args'
alias pms='pm2 status'
alias pmr='pm2 restart all'
alias pmk='pm2 kill'

alias oauth='export AUTH_REQUIRED=true; set | grep AUTH'
alias noauth='export AUTH_REQUIRED=false; set | grep AUTH'

alias auth='oauth'

gcmd='grant_type=client_credentials'
alias get_tkn='curl -i --user $client_id:$client_secret -d $gcmd "https://oauth.brightcove.com/v2/access_token"'


# Start mongo tool and select the correct database
alias mp='mongo player_management'
alias c='clear'
alias asd='clear'
alias cr='ths;di create -x false -v 2345'

#vc-sync-worker
alias shareVideo='ths;./cliRunner.js -h $mediaApiHost -r $mediaApiToken -t $mediaApiWriteToken -y shareVideo -v $videoId'
alias unShareVideo='ths;./cliRunner.js -h $mediaApiHost -r $mediaApiToken -t $mediaApiWriteToken -y unShareVideo -v $videoId'
alias updateVideoStill='ths;./cliRunner.js -h $mediaApiHost -r $mediaApiToken -t $mediaApiWriteToken -y updateVideoStillImage -v $videoId'
alias getVideos='ths;./cliRunner.js -h $mediaApiHost -r $mediaApiToken -t $mediaApiWriteToken -y getVideos -v $videoId'


# git stuff
alias gchk='args=$@;git checkout $args'
alias gitnb='args=$@;git checkout -b $args'

# setup oauth_token workflow
access_token_json="";
oauth_token="";

function parse_access_token {
	prop='access_token'
    temp=`echo $access_token_json | sed 's/\\\\\//\//g' | sed 's/[{}]//g' | awk -v k="text" '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed 's/\"\:\"/\|/g' | sed 's/[\,]/ /g' | sed 's/\"//g' | grep -w $prop`
    # echo ${temp##*|}
    #parse json object and extract the access_token to $oauth_token
    export oauth_token=`echo ${temp##*|}`
    export oauth_token
    #echo '[{"accountId": "507017973001", "accessToken": "Bearer '`echo ${temp##*|}`'" }]'
}


function get_public_token {
	access_token_json=`curl -i --user $public_client_id:$public_client_secret -d 'grant_type=client_credentials' "https://oauth.brightcove.com/v3/access_token"`
}
alias getPublicToken="get_public_token;parse_access_token"

function get_private_token {
	access_token_json=`curl -i --user $private_client_id:$private_client_secret -d 'grant_type=client_credentials' "https://private.oauth.brightcove.com/cathy/private/v3/access_token"`
}
alias getPrivateToken="get_private_token;parse_access_token"

function get_qa_token {
	access_token_json=`curl -i -k --user $qa_client_id:$qa_client_secret -d 'grant_type=client_credentials' "https://oauth.qa.brightcove.com/v3/access_token"`
}

function testQASecurity {
	tmp=`curl -k -X GET -H 'Authorization: Bearer' $oauth_token '' --data "[object Object]"  "https://players.api.qa.brightcove.com/v1/accounts/$ACCOUNT_ID/players"`
}

alias getQAToken="get_qa_token;parse_access_token"
alias checkQASecurity="get_qa_token;parse_access_token;testQASecurity"

function get_token {
	echo curl -i -k --user $client_id:$client_secret -d 'grant_type=client_credentials' "https://oauth.qa.brightcove.com/v3/access_token"
	access_token_json=`curl -i -k --user $client_id:$client_secret -d 'grant_type=client_credentials' "https://oauth.qa.brightcove.com/v3/access_token"`
	echo $access_token_json

}
alias getToken="get_token;parse_access_token"





alias thnpmredo="th;rm -rf node_modules/; npm cache clean; npm install;"
alias npmredo="npm cache clean; rm -rf node_modules; npm install;"


alias shrinkwrap='rm -f npm-shrinkwrap.json && rm -rf node_modules && npm cache clear && npm install  && npm shrinkwrap --dev'

function regen_shrinkwrap () {
	npm config set registry https://registry.npmjs.org/
	npm config set ca ""
	shrinkwrap
}


# quick access to pull the latest project files from all
# active projects
function git_pull_projects () {

	echo "***************";
	echo "dangerzone";
	echo "***************";
	dz;
	git pull;


	echo "***************";
	echo "topperharley";
	echo "***************";
	th;
	git pull;

	echo "***************";
	echo "batch-player-publish-worker";
	echo "***************";
	bpw;
	git pull;

	echo "***************";
	echo "batch-player-publish-cli";
	echo "***************";
	cli;
	git pull;

	echo "***************";
	echo "player-service-billing-worker";
	echo "***************";
	bw;
	git pull;
	wg;

}

# pull the latest project files from all
# active projects and reinstall npm modules
function git_pull_and_clean_projects () {

	echo "***************";
	echo "dangerzone";
	echo "***************";
	dz;
	git pull;
	npm cache clean; rm -rf node_modules; npm install;


	echo "***************";
	echo "topperharley";
	echo "***************";
	th;
	git pull;
	npm cache clean; rm -rf node_modules; npm install;

	echo "***************";
	echo "batch-player-publish-worker";
	echo "***************";
	bpw;
	git pull;
	npm cache clean; rm -rf node_modules; npm install;

	echo "***************";
	echo "batch-player-publish-cli";
	echo "***************";
	cli;
	git pull;
	npm cache clean; rm -rf node_modules; npm install;

	echo "***************";
	echo "player-service-billing-worker";
	echo "***************";
	bw;
	git pull;
	npm cache clean; rm -rf node_modules; npm install;
	wg;

}

# GATLING bash cmds
alias gat-file='di listPlayersToFile;th;cp ./scripts/responses/player-ids.json $GATLING_HOME/player-ids.json'

function preview_urls () {
	th;
	di listPlayersToFile;
	cp ./scripts/responses/player-ids.json $GATLING_HOME/player-ids.json;

	IDS=""
	LINES=`cat ./scripts/responses/player-ids.json | json_pp | grep '"id"'  | sed 's/.* : "\(.*\)".*/\1/'`
	for LINE in $LINES ; do
	    IDS="$LINE  $IDS"
	    echo $IDS
	done
	STRIPPED_IDS=(`echo $IDS | sed 's/.$//' `)

	for i in "${STRIPPED_IDS[@]}"
	do
		# echo http://127.0.0.1:3001/v1/accounts/507017973001/players/${i}/master/embeds/default/master/index.html
		 curl -i http://127.0.0.1:3001/v1/accounts/507017973001/players/${i}/master/embeds/default/master/index.html
		 sleep 1
	done

}

function showEmbedCounts () {
	#di listPlayersToFile -e q -a 992396400
	th;
	IDS=""
	LINES=`cat ./scripts/responses/player-ids.json | json_pp | grep '"id"'  | sed 's/.* : "\(.*\)".*/\1/'`

	for LINE in $LINES ; do
	    IDS="$LINE  $IDS"
	done

	STRIPPED_IDS=(`echo $IDS | sed 's/.$//' `)

	for i in "${STRIPPED_IDS[@]}"
	do
		echo $i
		di listEmbedCountsToFile -p $i -a 992396400 -e q
	done

}


function createEmbeds () {
	export params="-a $ALT_ACCOUNT_ID -e p"

	# for i in {1..10}
	# 	di create createEmbeds%250 $params
	# do

	for j in {1..9}
	do
	   echo "Create 20 players"
	   di createPlayers%100 $params
	   sleep 2
	done
}

function createProductionEmbeds () {
	export params="-a $ALT_ACCOUNT_ID -e p"
	# create a single player
	for i in {1..10}
	do
		di create $params
		# create 260 embeds for that player
		for j in {1..13}
		do
			di createEmbeds%20 $params
			sleep 5
		done
	done
}


function createProductionPlayers () {
	export params="-a $ALT_ACCOUNT_ID -e p"
	# create a single player
	for i in {1..97}
	do
		di createPlayers%10 $params
		sleep 20
	done
}

function xiHammer () {
	xibin;
	for i in {1..50}
	do
		./run-test.sh -e development -t system -d true
		sleep 120
	done
}


# function nginx_preview () {
# 	ths;
# 	for i in {1..5000}
# 	do
# 		./rateLimitTestIt.js -c 100 -v true -a $@ -t preview
# 		sleep 60
# 	done
# }


# function nginx_read () {
# 	ths;
# 	for i in {1..3}
# 	do
# 		./rateLimitTestIt.js  -c 600 -v true -a $@ -t read
# 		sleep 30
# 	done
# }

# function nginx_publishcreate () {
# 	ths;
# 	for i in {1..3}
# 	do
# 		./rateLimitTestIt.js  -c 600 -v true -a $@ -t publishcreate
# 		sleep 10
# 	done
# }

# function nginx_write () {
# 	ths;
# 	for i in {1..3}
# 	do
# 		./rateLimitTestIt.js  -c 300 -v true -a $@ -t write
# 		sleep 10
# 	done
# }




export PATH="$PATH:/usr/local/heroku/bin::$HOME/.rvm/bin"

alias rmTestCommonTmp='th; cd ./test/common; rm -rf ./tmp'
alias gvu='th;verbose=true grunt vu'
alias gqvu='th;verbose=true grunt qvu'
alias gsystem='th;verbose=true grunt system'
alias getxilog='scp dontpanic@xidontpanic:work/xidontpanic/logs/$@ .'
alias tvgvu='th;time verbose=true grunt vu'
alias tvkgvu='th;time verbose=true keep=true grunt vu'
alias tvgqvu='th;time verbose=true grunt qvu'
alias tvkgqvu='th;time verbose=true keep=true grunt qvu'
alias cleanupPerfTestAccounts='di deleteAll -a $ACCOUNT_ID_PERF; di deleteAll -a $ACCOUNT_ID_PERF_ALT'
alias listPerfTestAccounts='di list -a $ACCOUNT_ID_PERF; di list -a $ACCOUNT_ID_PERF_ALT'
alias cleanupAllTestAccounts='di deleteAll -a $ACCOUNT_ID_PERF; di deleteAll -a $ACCOUNT_ID_PERF_ALT; di deleteAll -a $ACCOUNT_ID; di deleteAll -a  $ALT_ACCOUNT_ID; di deleteAll -a  $ACCOUNT_ID_AUTO'
alias listAllTestAccounts='di list -a $ACCOUNT_ID_PERF; di list -a $ACCOUNT_ID_PERF_ALT; di list -a $ACCOUNT_ID; di list -a  $ALT_ACCOUNT_ID; di list -a $ACCOUNT_ID_AUTO'



#************ DEVOPS ***********#
alias logingri='ssh login.gri.brightcove.com -A'
alias loginkar='ssh login.kar.brightcove.com -A'
