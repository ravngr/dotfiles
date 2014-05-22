# ~/.profile: executed by the command interpreter for login shells.

# Set file permissions to include group by default
umask 0002

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$PATH:$HOME/bin"
fi

if [ -d "$HOME/local/bin" ] ; then
    PATH="$PATH:$HOME/local/bin"
fi

if [ -f "$HOME/.localenv" ] ; then
    . "$HOME/.localenv"
fi

