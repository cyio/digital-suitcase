#/bin/bash

# numlockx on & xfce4-panel
# python '/home/oops/Project/widget/matrix/show.py' # & python '/home/oops/Project/widget/pics_show.py'

python '/home/chrx/.apps/quicktile/quicktile.py' --daemonize

FILE=~/lastrun
TODAY=`date +"%Y%m%d"`
LASTRUN=`cat $FILE`

[[ -z "$LASTRUN" ]] || [[ "$TODAY" -gt "$LASTRUN" ]] || exit
echo $TODAY > $FILE
# bash $HOME/nasa.sh
