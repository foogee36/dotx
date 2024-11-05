
# List-related aliases

alias ls='ls -G'
alias ll='ls -alG'

# Colorize grep output
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Add safty nets
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Git-related aliases

# Shorthand for git command
alias g='git'

# Basic git commands
alias ga='git add'
alias gau='git add -u'
alias gcm='git commit -m'
alias gca='git commit --amend'

# Status and information
alias gs='git status'
alias gss='git status'
alias gl='git log'
alias glno='git log --name-only'

# branching
alias gsw='git switch'
alias gswc='git switch -c'

# Remote operations
alias gf='git fetch'

# Diff
alias gd='git diff'
alias gds='git diff --staged'

# Reset
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'

# Show verbose output about tags, branches, or remotes
alias gtv='git tag | sort -V'
alias gbv='git branch -v'
alias grv='git remote -v'

# List aliases
alias gal='alias | grep git'
