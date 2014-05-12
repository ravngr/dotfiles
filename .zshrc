# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="etoast"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable command auto-correction.
DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(autoenv cp debian dirhistory sudo tmux)

export TMUX_POWERLINE_SEG_DATE_FORMAT="%d/%m/%y"
export TMUX_POWERLINE_SEG_TIME_FORMAT="%I:%M%P"
export TMUX_POWERLINE_SEG_HOSTNAME_FORMAT="long"
export TMUX_POWERLINE_SEG_WEATHER_LOCATION="1103816"
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOCONNECT=false
export ZSH_TMUX_FIXTERM=false

source $ZSH/oh-my-zsh.sh

# User configuration
#export PATH=/home/e02260/local/bin:/home/e02260/.local/bin:/home/e02260/local/cuda-6.0/bin:$PATH
#export LD_LIBRARY_PATH=/home/e02260/local/cuda-6.0/lib64:$LD_LIBRARY_PATH

#export MANPATH="~/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_AU.UTF-8
export LC_CTYPE=en_AU.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
