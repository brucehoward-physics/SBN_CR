____CR-From-Home____

This directory contains scripts, icons, and desktop scripts to open the VNC sessions and Grafana monitoring necessary for monitoring shift tools from a computer or for experts to connect and help out.

This DOES NOT cover iFix. You need to follow the Remote Desktop instructions for that, located on the Wiki.

If you have a Linux distribution, you can run the programs by double-clicking the ".desktop" item corresponding to it. Allow it to run, and then you should see it becomes an icon that launches the needed terminal :)

To set up the desktop icons, run the setup_icons.sh file from this directory. It will replace the Exec and Icon lines with the proper working area for your system, by doing a PWD and using sed to replace the lines...

If you have a Mac OS, then you should instead run the program from the scripts subdirectory. They are executable, so if you cd into the directory you can do, for example,

   ./vncDAQ.sh

to tunnel to the DAQ machine. Then go to a web browser and go to the necessary address.



NOTES:

We're working on a version that will make this even more seamless...

(TODO: is there a .desktop equivalent for Mac?)
