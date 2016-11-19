#  _              _                        __ _ _
# | |__  __ _ ___| |__    _ __  _ __ ___  / _(_) | ___
# | '_ \ / _` / __| '_ \  | '_ \| '__/ _ \| |_| | |/ _ \
# | |_) | (_| \__ \ | | | | |_) | | | (_) |  _| | |  __/
# |_.__/ \__,_|___/_| |_| | .__/|_|  \___/|_| |_|_|\___|
#                         |_|

# When Bash starts, it executes the commands in this script
# http://en.wikipedia.org/wiki/Bash_(Unix_shell)

# Written by Philip Lamplugh, Instructor General Assembly (2013-2015)
# Updated by PJ Hughes, Instructor General Assembly (2013-2015)
# Updated by Keyan Bagheri, Instructor General Assembly (2015)

# =====================
# Resources
# =====================

# http://cli.learncodethehardway.org/bash_cheat_sheet.pdf
# http://ss64.com/bash/syntax-prompt.html
# https://dougbarton.us/Bash/Bash-prompts.html
# http://sage.ucsc.edu/xtal/iterm_tab_customization.html

# ====================
# TOC
# ====================
# --------------------
# System Settings
# --------------------
#  Path
#  Settings
#  History
#  Aliases
#  Change System Settings
# --------------------
# Application Settings
# --------------------
#  Application Aliases
#  rbenv
#  nvm
# --------------------
# Other Settings
# --------------------
#  Functions
#  Sourced Files
#  Environmental Variables and API Keys

# =================
# Path
# =================
PATH="$HOME/.rbenv/bin:$PATH"                              # RBENV
PATH="/usr/local/share/npm/bin:$PATH"                      # NPM
PATH="/usr/local/bin:/usr/local/sbin:$PATH"                # Homebrew
PATH="/usr/local/heroku/bin:$PATH"                         # Heroku Toolbelt
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"       # Coreutils
MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH" # Manual pages

####################################################
################### My Paths #######################
####################################################

PATH="$PATH:/usr/local/bin/scripts"
JAVA_HOME="$PATH:/usr/libexec/java_home"

# =================
# Settings
# =================

# Prefer US English
export LC_ALL="en_US.UTF-8"
# use UTF-8
export LANG="en_US"

# # Adds colors to LS!!!!
# export CLICOLOR=1
# # http://geoff.greer.fm/lscolors/
# # Describes what color to use for which attribute (files, folders etc.)
# export LSCOLORS=exfxcxdxbxegedabagacad # PJ: turned off
# export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=34;46:cd=34;43:su=0;41:sg=0;46:tw=0;42:ow=0;43:"

# =================
# History
# =================

# http://jorge.fbarr.net/2011/03/24/making-your-bash-history-more-efficient/
# Larger bash history (allow 32³ entries; default is 500)
export HISTSIZE=32768
export HISTFILESIZE=$HISTSIZE

# don't put duplicate lines in the history.
export HISTCONTROL=ignoredups

# ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# Make some commands not show up in history
export HISTIGNORE="h"


# ====================
# Aliases
# ====================

## 'ls' lists information about files.
# By default, show slashes for directories.
alias ls='ls -F'

# Enhanced ls, grouping directories and using colors.
alias lf='ls --color -h --group-directories-first -F'

# Long list format including hidden files and file information.
alias ll='ls --color -h --group-directories-first -Fla'

# List ACLs (finer-grained permissions that can be inherited).
# ACLs are a necessary part of OSX fs since 10.6; see
# - ACLs on OSX: https://goo.gl/PhkcA2
# - OSX chmod manpage: https://goo.gl/vJqgZ9
#
# Note: The default ls on 10.7+ OSX is the GNU coreutils version at:
# /usr/local/opt/coreutils/libexec/gnubin/ls; in order to see the
# ACL permissions, we must use the BSD version available at: /bin/ls
alias lacl='/bin/ls -GFlae'

# Go back one directory
alias b='cd ..'

# History lists your previously entered commands
alias h='history'

# If we make a change to our bash profile we need to reload it
alias reload="clear; source ~/.bash_profile"

# Execute verbosely
alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias mkdir='mkdir -pv'

# =================
# Change System Settings
# =================

# Hide/show all desktop icons (useful when presenting)
alias hide_desktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias show_desktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Hide/show hidden files in Finder
alias hide_files="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"
alias show_files="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"

####################################################
#################### My Aliases ####################
####################################################

#Random
alias f='touch'
alias d='mkdir'

#Moving around
alias bb='cd ../../'
alias bbb='cd ../../../'
alias bbbb='cd ../../../../'

#Vim
alias v='vim'

#Rails
alias r='rails'

#Bundler
alias bi='bundle install'

#React
alias ns='npm start'
alias ni='npm install'

#Projects
alias pedulio='cd ~/projects/pedul.github.io/'
alias pedulfire='cd ~/projects/pedul/'
alias motivatedir='cd ~/code/wdi/motivate/'
alias portdir='cd ~/code/wdi/portfolio/'
alias myscripts='cd ~/usr/local/bin/scripts/'
alias myscriptgit='cd ~/code/wdi/scripts/'
alias projects='cd ~/code/wdi/'

#Git
alias g='git'
alias gcb='g checkout -b'
alias gc='g checkout'
alias ga='g add .'
alias gcm='g commit -m'
alias gs='g status'
alias gb='g branch'
alias grv='g remote -v'
alias gm='g merge'
alias gp='g push'
alias gpo='g push origin'
alias gpu='g push upstream'
