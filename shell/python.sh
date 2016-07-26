export PYENV_ROOT="$HOME/.pyenv"

if $(which pyenv 2>&1 >/dev/null); then
    eval "$(pyenv init --no-rehash -)"
elif test -f $PYENV_ROOT/bin/pyenv; then
    export PATH="$PATH:$PYENV_ROOT/bin"
    eval "$($PYENV_ROOT/bin/pyenv init --no-rehash -)"
fi

test -d $PYENV_ROOT/plugins/pyenv-virtualenv && eval "$($PYENV_ROOT/bin/pyenv virtualenv-init -)"

[[ -f "/usr/local/opt/autoenv/activate.sh" ]] && source "/usr/local/opt/autoenv/activate.sh"
