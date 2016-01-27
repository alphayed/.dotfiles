 #
 # ~/.bashrc
 #

 # If not running interactively, don't do anything
 [[ $- != *i* ]] && return

 #myCustom commands
 alias nano='sudo nano'
 alias pacin='sudo pacman -S'
 alias pacup='sudo pacman -Syyu'
 alias pacsync='sudo pacman -Syy'
 alias pacs='pacman -s'
 alias yinstall='yaourt -S'
 alias yupdate='yaourt -Syyu'
 alias ysync='yaourt -Syy'
 alias rake='bundle exec rake'
 alias rails='bundle exec rails'
 alias c='clear'
 alias bashrc='vim ~/.dotfiles/bashrc'
 alias vimrc='vim ~/.dotfiles/vimrc'
 alias lsa='ls -a'
 alias untar='tar -zxvf'
 alias gitconfig='vim ~/.dotfiles/gitconfig'
 alias gitignore='vim ~/.dotfiles/gitignore'
 #----------------------------------#

 alias ls='ls --color=auto'
 #PS1='[\u@\h \W]\$ '

 #Promot customization
 PROMPT_COMMAND='history -a;echo -en "\033[m\033[38;5;2m"$(( $(sed -nu "s/MemFree:[\t ]\+\([0-9]\+\) kB/\1/p" /proc/meminfo)/1024))"\033[38;5;22m/"$(($(sed -nu "s/MemTotal:[\t ]\+\([0-9]\+\) kB/\1/Ip" /proc/meminfo)/1024 ))MB"\t\033[m\033[38;5;55m$(< /proc/loadavg)\033[m"'
 PS1='\[\e[m\n\e[1;30m\][$$:$PPID \j:\!\[\e[1;30m\]]\[\e[0;36m\] \T \d \[\e[1;30m\][\[\e[1;34m\]\u@\H\[\e[1;30m\]:\[\e[0;37m\]${SSH_TTY} \[\e[0;32m\]+${SHLVL}\[\e[1;30m\]] \[\e[1;37m\]\w\[\e[0;37m\] \n($SHLVL:\!)$(__git_ps1)\[$WHITE\]\$'

 # This is required for Rubygems to work without typing out the full location
 PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

 #Bundler installs gems system-wide, which is contrary to the behaviour of gem itself on Arch. To correct this, add the following line
 export GEM_HOME=$(ruby -e 'print Gem.user_dir')

 # Load in the git branch prompt script:
 source /usr/share/git/completion/git-prompt.sh

 #Enables 256color
 if [ -e /usr/share/terminfo/x/xterm-256color ]; then
         export TERM='xterm-256color'
 else
         export TERM='xterm-color'
 fi


 export LANG=en_US.UTF-8
