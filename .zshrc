export PATH=/usr/local/bin:/usr/local/sbin:$PATH

alias rcal='ruby ~/desktop/NSS/NSS_section_2/ruby_cal/cal.rb'
alias saison_builder='ruby ~/desktop/NSS/NSS_section_2/saison_app/saisonbuilder'
alias sb='ruby ~/desktop/NSS/NSS_section_2/saison_app/saisonbuilder'
alias zshconfig='subl ~/.zshrc'
alias ohmyzsh='subl ~/.oh-my-zsh'
alias ctag ='ctags -R -f .tags'

alias gap='git add -p'
alias ga.='git add .'
alias ga='git add'
alias grm='git rm'
alias push='git push origin master'
alias pull='git pull origin master'
alias commit='git commit -m'
alias unstage='git reset HEAD'

# RVM
if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi

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
plugins=(gitfast rails3 ruby autojump bundler dircycle dirpersist urltools)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/Users/Dustin/.rvm/gems/ruby-2.0.0-p0/bin:/Users/Dustin/.rvm/gems/ruby-2.0.0-p0@global/bin:/Users/Dustin/.rvm/rubies/ruby-2.0.0-p0/bin:/Users/Dustin/.rvm/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin

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
local smiley="%(?,%{$fg[green]%}✓%{$reset_color%},%{$fg[red]%}☠%{$reset_color%})"

PROMPT='%{[33m%}
%~
${smiley}  %{$reset_color%}'

RPROMPT='%{$fg[red]%} $(~/.rvm/bin/rvm-prompt)$(~/bin/git-cwd-info)%{$reset_color%}'

