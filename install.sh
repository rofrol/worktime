#! /bin/sh
#owner of 99-worktime should be root
cp 99-worktime /etc/pm/sleep.d/
sed -i 's@USER_HOME=.*@USER_HOME='"$HOME"'@' /etc/pm/sleep.d/99-worktime
cp worktime-start /etc/init.d/
sed -i 's@USER_HOME=.*@USER_HOME='"$HOME"'@' /etc/init.d/worktime-start
cp worktime-halt /etc/init.d/
sed -i 's@USER_HOME=.*@USER_HOME='"$HOME"'@' /etc/init.d/worktime-halt
update-rc.d -f worktime-start start 99 2 3 4 5 .
update-rc.d -f worktime-halt start 20 0 .
