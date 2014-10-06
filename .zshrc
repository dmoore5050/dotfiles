# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

export PGDATA='/usr/local/var/postgres'
export PGHOST=localhost

alias push-uidemo='git push uidemo feature/ui_upgrade_v2:master'
alias push-ui='git push fork feature/ui_upgrade'

alias start-pg='pg_ctl -l $PGDATA/server.log start'
alias stop-pg='pg_ctl stop -m fast'
alias show-pg-status='pg_ctl status'
alias restart-pg='pg_ctl reload'

alias rake='bundle exec rake '

alias cuke='bundle exec cucumber -r features '
alias wip='--tags @wip'
alias rspec='bundle exec rspec '
alias deploy='bundle exec cap production deploy'

alias c='clear'
alias zshconfig='subl ~/.zshrc'
alias ohmyzsh='subl ~/.oh-my-zsh'
alias ctag='ctags -R -f .tags'

alias kiq='bundle exec sidekiq -C config/sidekiq.yml'

alias gap='git add -p'
alias ga.='git add .'
alias ga='git add'
alias grm='git rm'
alias grmall='git rm $(git ls-files --deleted)'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gmrg='git merge'
alias push='git push'
alias pushu='git push -u'
alias pushh='git push heroku master'
alias pull='git pull origin master'
alias commit='git commit'
alias amend='git commit --amend'
alias unstage='git reset HEAD'

function rails-s { kill -9 `lsof -t -i :$1`; bundle exec rails s -p $1 }

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# ZSH_THEME="robbyrussell"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(gitfast rails ruby autojump dircycle dirpersist urltools)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin

# Show completion on first TAB
setopt menucomplete

# Load completions for Ruby, Git, etc.
autoload -U compinit
compinit

# Colors
autoload -U colors
colors
setopt prompt_subst

# Prompt

# prompt with ruby version
# rbenv version | sed -e 's/ .*//'
__rbenv_ps1 ()
{
  rbenv_ruby_version=`rbenv version | sed -e 's/ .*//'`
  printf $rbenv_ruby_version
}

local smiley="%(?,%{$fg[green]%}✓%{$reset_color%},%{$fg[red]%}☠%{$reset_color%})"

PROMPT='%{$fg_no_bold['yellow']%}
%~
${smiley}  %{$reset_color%}'

RPROMPT='%{$fg[red]%} $(__rbenv_ps1)$(~/bin/git-cwd-info)%{$reset_color%}'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

eval "$(rbenv init -)"
