#!/bin/sh

# Shutdown Commands
# Rik Brugman 2017

# asking all programs to shutdown gracefully
wmctrl -l | while read ADDRESS A B PROCESS; do
	if [[ $PROCESS != *"nagbar"* ]]; then
		wmctrl -i -c $PROCESS || echo "$PROCESS not killed"
		#echo $ADDRESS - $PROCESS >> ~/applog.log
	fi
done

# shutdown X and system
systemctl poweroff
