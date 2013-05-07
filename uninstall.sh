rm /etc/init.d/worktime-start
rm /etc/init.d/worktime-halt
update-rc.d -f worktime-start remove
update-rc.d -f worktime-halt remove
rm /etc/pm/sleep.d/99-worktime
