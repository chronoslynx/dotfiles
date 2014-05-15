export MARKPATH=$HOME/.marks

function jump {
    cd -P $MARKPATH/$1 2>/dev/null || echo "No such mark: $1"
}

function mark {
    mkdir -p $MARKPATH; ln -s $(pwd) $MARKPATH/$1
}

function unmark {
  rm -if "$MARKPATH/$1"
}

function marks {
    ls -l $MARKPATH | sed 's/  / /g' | cut -d' ' -f9- | sed 's/ -/ -/g' && echo
}

function _marks {
    reply=($(ls $MARKPATH))
}

case $SHELL in
*zsh)
    compctl -K _marks jump
    compctl -K _marks unmark
    ;;
*bash)
    complete -F _marks -o default jump
    complete -F _marks -o default unmark
    ;;
esac
