export TODOTXT_DEFAULT_ACTION=pv
export BLOGROOT="$DEV/chronoslynx.github.io"
export HISTFILE="$HOME/.zshistory"
export HISTSIZE=10000
export HASTE_SERVER="http://hastebin.com"

for i in ls ~/.secret/*.sh; do
    source $i
done

# export LANG=en_US.utf8
# export LC_CTYPE=en_US.utf8
#case $(uname -s) in
#Linux)
#    export LC_ALL=en_US.UTF-8
#    ;;
#esac
