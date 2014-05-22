# Path to oh-my-zsh installation.
export ZSH=$HOME/.dotfiles/oh-my-zsh

# Theme
ZSH_THEME="etoast"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to disable command auto-correction.
DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
#COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files
DISABLE_UNTRACKED_FILES_DIRTY="true"

# History timestamp format
HIST_STAMPS="yyyy-mm-dd"

# Additional folder for custom zsh themes/plugins
ZSH_CUSTOM=~/.dotfiles/oh-my-zsh-custom

# Plugins to load
plugins=(autoenv cp dirhistory sudo)

# tmux plugin options
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOCONNECT=false
export ZSH_TMUX_FIXTERM=false

source $ZSH/oh-my-zsh.sh

# User path configuration
if [ -f ~/.path ]; then
    source ~/.path
fi

# You may need to manually set your language environment
export LANG=en_AU.UTF-8
export LC_CTYPE=en_AU.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Disable shared history beterrn terminals
setopt no_share_history

