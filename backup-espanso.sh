#!/bin/bash

gstatus=`git -C /home/scot/.config/espanso/ status --porcelain`

if [ ${#gstatus} -ne 0 ]
then
    git -C /home/scot/.config/espanso/ add --all
    git -C /home/scot/.config/espanso/ commit -m "Automated sync: $gstatus"
	  git -C /home/scot/.config/espanso/ pull --rebase
    git -C /home/scot/.config/espanso/ push
fi
