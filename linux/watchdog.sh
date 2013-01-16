#!/bin/bash
####################
# Installation instuctions:
####################
# Edit this file with the correct process application name (line 23)
# Edit this file with the full path to the application (line 24)
# Save this file
# Create a new cron tab (steps below)
# In a terminal window: $ crontab -e
# 					     -- Add to the the bottom '* * * * * bash /path/to/watchdog.sh'
#                        -- ctrl-x to exit and save.
# This will create a cron job that runs the this script every minute. 
# 
####################
# Notes
####################
# To stop the the cron job. In a terminal: $ sudo service cron stop
# By defualt cron should be running but if you have stoped it, to start the the cron job. In a terminal: $ sudo service cron start
# Each user has there own crontab. Make sure in the terminal you are logged in as the correct user.  "sudo crontab -e" and "crontab -e" will also be regonized as different users.
####################
export DISPLAY=:0 #needed if you are running a simple gui app.

process=application-name
makerun="/path/to/application-name"

if ps ax | grep -v grep | grep $process > /dev/null
        then
                exit
        else
        $makerun &
        fi
exit
