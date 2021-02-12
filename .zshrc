# =================
# TOC
# =================
# Basics
# History
# System Settings
# Aliases
    # » directory navigation
    # » git
    # » ruby
    # » bundle
    # » project directories

# bootstrapping related
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
source "$HOME/.bootstrap/env.sh"

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

# =================
# Change System Settings
# =================

# Hide/show hidden files in Finder
alias hide_files="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"
alias show_files="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"

# ====================
# Aliases
# ====================

# Go back one directory
alias up='cd ..'

# History lists your previously entered commands
alias h='history'

# If we make a change to our bash profile we need to reload it
alias reload="clear; source ~/.zshrc"

# git and ruby commands
alias g='git'
alias gb='g branch'
alias ga='g add'
alias gaa='g add -A'
alias gcm='g commit -m'
alias gs='g status'
alias gd='g diff'
alias gc='g checkout'
alias gcb='g checkout -b'
alias gfu='g fetch upstream'
alias gfo='g fetch origin'
alias gpullo='g pull origin'
alias gpusho='g push origin'
alias gm='g merge'
alias updatemain='g pull origin main'

alias rc='rails console'
alias rs='rails server'
alias rdbm='rake db:migrate'
alias rspry="RUBY_DEBUG_PORT=1234 bundle exec rails s -p 3001 -P debug.pid -b 'retail.test'"
alias rbcurr="git ls-files -m | xargs ls -1 2>/dev/null | grep '\.rb$' | xargs bundle exec rubocop"

alias b='bundle'
alias bx='b exec'
alias bxr='b exec rspec'
alias bxrbc='bundle exec rubocop'
alias bi='b install'
alias bu='b update'
