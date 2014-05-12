# ~/.profile: executed by the command interpreter for login shells.

# Set file permissions to include group by default
umask 0002

# Include .bashrc if compatible
if [ "$BASH" ]; then
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/local/bin" ] ; then
    PATH="$HOME/local/bin:$PATH"
fi

