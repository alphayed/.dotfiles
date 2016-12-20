# Path to your oh-my-zsh installation.
export ZSH=/home/alphayed/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="lambda-mod"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

# User configuration
export PATH="/home/alphayed/.gem/ruby/2.3.0/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# myCustom Commands {(
  alias zshrc='vim ~/.dotfiles/zshrc'
  alias bashrc='vim ~/.dotfiles/bashrc'
  alias vimrc='vim ~/.dotfiles/vimrc'
  alias lock='slimlock'
  alias untar='tar -zxvf'
  alias gunssh='sudo systemctl start sshd.service'
  alias startx='ssh-agent startx'
  # Pacman
  alias pacin='sudo pacman -S'
  alias pacup='sudo pacman -Syyu'
  alias pacsync='sudo pacman -Syy'
  alias unpac='sudo pacman -Rs'
  alias checkpac='pacman -Qe'
  alias checkpac -m='pacman -Qm'
  # Shell Commands
  alias c='clear'
  alias lsa='ls -a --color=auto'
  alias ls='ls --color=auto'
  alias zsh_reload='source ~/.zshrc'
  alias swp-f='find . -type f -name "*swp"'
  alias swp-d='find . -type f -name "*swp" -exec rm -f "{}" \;'
#)}

# This is required for Rubygems to work without typing out the full location
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

#Bundler installs gems system-wide, which is contrary to the behaviour of gem itself on Arch. To correct this, add the following line
export GEM_HOME=$(ruby -e 'print Gem.user_dir')

#Enables 256color
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
       export TERM='xterm-256color'
else
       export TERM='xterm-color'
fi

#Load Tmux on startup
# if command -v tmux>/dev/null; then
#  [[ ! $TERM =~ screen  ]] && [ -z $TMUX  ] && exec tmux
#  fi

# RVM (Ruby Version Manager)
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm"  ]] && source "$HOME/.rvm/scripts/rvm"
# RVM bash completion
[[ -r "$HOME/.rvm/scripts/completion"  ]] && source "$HOME/.rvm/scripts/completion"
# RVM Commands
alias gemset-l='rvm gemset list'
alias gemset-u='rvm gemset use'
alias gemset-c='rvm gemset create'
