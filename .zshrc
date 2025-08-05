# ZSH configuration
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="simple"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Aliases: jj
alias jw='watch --color jj --ignore-working-copy log --color=always'
alias jc='jj desc -m'
alias jp='jj git push'
alias jb='jj bookmark'
alias js='jj st'
alias ju='jj git fetch && jj rebase --branch "all:visible_heads() & mine()" --destination main && jj new main'

# Aliases: git
alias ga='git add'
alias gap='ga --patch'
alias gb='git branch'
alias gba='gb --all'
alias gc='git commit'
alias gca='gc --amend --no-edit'
alias gce='gc --amend'
alias gco='git checkout'
alias gcl='git clone --recursive'
alias gd='git diff --output-indicator-new=" " --output-indicator-old=" "'
alias gds='gd --staged'
alias gi='git init'
alias gl='git log --graph --all --pretty=format:"%C(magenta)%h %C(white) %an  %ar%C(blue)  %D%n%s%n"'
alias gm='git merge'
alias gn='git checkout -b'
alias gp='git push'
alias gr='git reset'
alias gs='git status --short'
alias gu='git pull'
alias repo-size='git ls-files | xargs wc -l'

# Aliases: npm
alias ns='cat package.json | jq .scripts'
