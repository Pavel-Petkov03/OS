
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# Set default PATH if not already set
if [ -z "$PATH" ]; then
    PATH="$HOME/bin:/usr/local/bin:$PATH"
fi
export PATH

# Environment variables
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export EDITOR="nano"

# Run X server startup commands (if applicable)
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec startx
fi
