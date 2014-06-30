# Mac OS X should put /usr/local/bin first.
# Can also achive by reordering /etc/paths
#

setenv PATH "/usr/local/bin:/usr/local/share/npm/bin:${HOME}/.cabal/bin:/usr/local/opt/coreutils/bin:/usr/local/var/rbenv/shims:${PATH}:$HOME/bin:."

eval `gdircolors -c ~/lib/dircolors-solarized/dircolors.ansi-universal`
setenv LS_OPTIONS "--color=auto --group-directories-first -F"

if (-e `which gls`) then
	alias ls 'gls $LS_OPTIONS'
else
	alias ls 'ls -Gp'
endif

setenv GNUTERMAPP /Applications/AquaTerm.app
setenv GNUTERM aqua
setenv PKG_CONFIG_PATH /usr/X11/lib/pkgconfig
setenv RBENV_ROOT /usr/local/var/rbenv
setenv LLVM_CONFIG_PATH `which llvm-config`

setenv COMPILER gcc

set history=1000
set savehist=1000 merge
set noclobber
set hostname = `hostname | sed -e 's/[.].*//'`
set rmstar
set nobeep
set autolist

setenv PAGER less
setenv LESS XFR
setenv EDITOR vi
setenv CC /usr/bin/gcc

# ALIASES
#

# prompt ugliness now in setprompt file
alias precmd "source ~/bin/setprompt"

alias mv 'mv -i'
alias cp 'cp -i'
alias du 'du -sh'	# human readable
alias grep 'grep --color=always'
alias lynx 'lynx --accept_all_cookies'

alias , cd .. 
alias ll 'ls -lhG' 
alias la 'ls -AG'
alias lt 'ls -lt'
alias lla 'ls -lGa'
alias pd pushd
alias md mkdir
alias h history

alias vimrc 'vi ~/.vimrc'
alias cshrc 'vi ~/.cshrc'

# `brew install tree` instead
# alias tree "find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

alias c clear
alias m less

alias download 'curl \!:1 -0'
alias downloadcb 'curl `pbpaste` -0;exit'

alias take 'mkdir \!:1 && cd \!:1'
# Git
# alias gg 'git commit -v -m "\!:*"'
alias gg 'git commit  -m "\!:*"'
alias gga 'git commit -v -a -m "\!:*"'
alias gs 'git status'
alias gb 'git branch -av'

alias ga 'git add'
alias gbco 'git checkout -b'
alias gca 'git commit -v -a'
alias gd 'git diff | more'

alias gitlog 'git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'

alias t 'python ~/projects/repos/t/t.py --task-dir ~/projects/tasks --list tasks'
alias qa 'ack -cl'		# quiet ack

# Processes
alias tc 'top -o cpu' # sort by cpu
alias tm 'top -o vsize' # sort by memory

# Finder
alias o 'open . &'
alias gc 'open -a "Google Chrome" --args'

# Aliases
alias ea 'vi ~/.cshrc && source ~/.cshrc'

# Best alias ever
alias zz top

# find file
alias ff 'find . -name \!:1 -print'

# taillog (requires brew install grc)
alias taillog "tail -F /var/log/system.log | grcat conf.log ;"

# map ver (like Windows)
alias ver sw_ver

if( $?tcsh ) then
	bindkey "^W" backward-delete-word
endif

alias gdr 'grunt debug-run --debug'

# open all files in tabbed mode, then use TAB to skip through them
alias vi 'vi -p'


