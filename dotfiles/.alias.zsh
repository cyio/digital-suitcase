alias byt='bytewiser'
alias dt='date --rfc-3339="date"'
alias v='vim'
alias z='cd'
alias pc='percol'
alias px='proxychains'
alias hig='history|grep'
alias open='xdg-open'
alias goo='proxychains googler -l zh --colors bjdxxy' 
# alias vim="nvim"
# mosh
alias spc='mosh oaker@192.168.1.143'
alias scb='mosh oaker@192.168.1.115'
alias smb='mosh --ssh="ssh -p 8022" u0_a78@192.168.1.233'
function gi() { curl -L -ttps://www.gitignore.io/api/$@ ;}
function lazygit() {
  git add .
  git commit -a -m "$1"
  git push
}
