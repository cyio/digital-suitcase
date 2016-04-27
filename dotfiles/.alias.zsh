alias dt='date --rfc-3339="date"'
alias hig='history|grep'
alias open='xdg-open'
# alias vim="nvim"
function gi() { curl -L -ttps://www.gitignore.io/api/$@ ;}
function lazygit() {
  git add .
  git commit -a -m "$1"
  git push
}
