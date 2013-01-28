alias c='ssh cs61c-sw@hive16.cs.berkeley.edu'
alias b='ssh cs61b-gg@hive16.cs.berkeley.edu'
alias bstar='ssh cs61b-gg@star.cs.berkeley.edu'
alias 70='ssh cs70-be@star.cs.berkeley.edu'
alias v='vim'
alias ..='cd ..'
alias la='ls -a'
alias ll='ls -l'
alias df='df -h'
alias sl='ls'
alias aliases='v ~/.bash_aliases'
alias reload_aliases='. ~/.bash_aliases'
alias cd..='..'
alias cl='clear'
alias o='open'

alias gitrm='git diff --diff-filter=D --name-only -z | xargs -0 git rm'
alias git-send='git add . \ gitrm \ git push'
alias herokup='git push heroku master &'

alias migrate="rake db:migrate db:test:prepare"
alias remigrate="rake db:migrate && rake db:migrate:redo && rake db:schema:dump db:test:prepare"
alias remongrate="rake mongoid:migrate && rake mongoid:migrate:redo"
alias svnprecommit="git svn rebase && rake features && rake test"
alias hgprecommit="hg pull && rake features && rake test"
alias g="git"
alias tu="ruby_test unit"
alias tf="ruby_test functional"
alias s="bundle exec rspec"
alias cuc="bundle exec cucumber"
alias sm="ruby_spec models"
alias sc="ruby_spec controllers"
alias ti="ruby_test integration"
alias hgdi="hg diff --color=always --git | less -r"
alias hgrev="hg revert --no-backup"
alias hgclean="hg status | grep -e '^\\?' | sed 's/^\\?//' | xargs -t rm -f"
alias gi="gem install"
alias giv="gem install -v"
alias gci="git pull --rebase && rake && git push"
alias tlf="tail -f"
alias eydeploy="ey deploy -e \${\$(pwd):t}_staging"
alias eypending="git log \$(ey ssh \"cat /data/\${\$(pwd):t}/current/REVISION\" -e \${\$(pwd):t}_production)..origin/master"
alias hdeploy="git push staging master && heroku rake db:migrate --app \${\$(pwd):t}-staging"
alias hconsole="heroku console --app \${\$(pwd):t}-staging"
alias b="bundle"
alias be="bundle exec"
alias pg-start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg-stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

