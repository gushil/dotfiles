# Shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias reloadcli="source $HOME/.zshrc"
alias reloaddns="dscacheutil -flushcache && sudo killall -HUP mDNSResponder"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias c="clear"
alias myip="curl -s ident.me"
alias ll="ls -lhFG"
alias la='ll -a'
alias l='ls -CF'
alias df="df -Tha --total"
alias du="du -ach | sort -h"
alias free="free -mt"
alias ps="ps auxf"
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias mkdir="mkdir -pv"
alias grep="grep --color"
alias histg="history | grep"
alias wget="wget -c"

mcd () {
    mkdir -p $1
    cd $1
}
weather() { curl -4 wttr.in/${1:-Bandung} }

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"

# Docker
#alias dstop="docker stop $(docker ps -a -q)"
#alias dpurgecontainers="dstop && docker rm $(docker ps -a -q)"
#alias dpurgeimages="docker rmi $(docker images -q)"
#dbuild() { docker build -t=$1 .; }
#dbash() { docker exec -it $(docker ps -aqf "name=$1") bash; }

# Git
alias commit="git add . && git commit -m"
alias gcommit="git add . && git commit"
alias gst="git status"
alias gc="git checkout"
alias gd="git diff"
alias gl="git log --oneline --decorate --color"
alias gnuke="git clean -df && git reset --hard"

# youtube-dl
mp3 () {
	youtube-dl --ignore-errors -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o '~/Music/youtube/%(title)s.%(ext)s' "$1"
}

mp3p () {
	youtube-dl --ignore-errors -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 -o '~/Music/youtube/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s' "$1"
}

dlv () {
	youtube-dl --ignore-errors -o '~/Videos/youtube/%(title)s.%(ext)s' "$1"
}

dlp () {
	youtube-dl --ignore-errors -o '~/Videos/youtube/%(playlist)s/%(title)s.%(ext)s' "$1"
}
