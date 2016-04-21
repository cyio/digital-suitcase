alias dt='date --rfc-3339="date"'
alias hg='history|grep'
alias wx='cd /home/oaker/Projects/1603/electronic-wechat&& npm start &'
alias open='xdg-open'
# alias vim="nvim"s
function gi() { curl -L -ttps://www.gitignore.io/api/$@ ;}
functioazygit() {
	git add .
	git commit -a -m "$1"
	git push
}
