# It is necessary for the setting of DOTPATH
#[ -f ~/.path ] && source ~/.path

# DOTPATH environment variable specifies the location of dotfiles.
# On Unix, the value is a colon-separated string. On Windows,
# it is not yet supported.
# DOTPATH must be set to run make init, make test and shell script library
# outside the standard dotfiles tree.
if [ -z "$DOTPATH" ]; then
    echo "cannot start $SHELL, \$DOTPATH not set" 1>&2
    return 1
fi

export PATH=~/bin:"$PATH"