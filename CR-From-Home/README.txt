____CR-From-Home____

This directory contains scripts, icons, and desktop scripts to open the VNC sessions and Grafana monitoring necessary for monitoring shift tools from a computer or for experts to connect and help out.

This DOES NOT cover iFix. You need to follow the Remote Desktop instructions for that, located on the Wiki.

If you have a Linux distribution, you can run the programs by double-clicking the ".desktop" item corresponding to it. Allow it to run, and then you should see it becomes an icon that launches the needed terminal :)

To set up the desktop icons, run the setup_icons.sh file from this directory. It will make the .desktop files for you so that you can execute them. It turns out .desktop needs an absolute path, so this script runs an 'echo $PWD' to get the area...

If you have a Mac OS, then you should instead run the program from the scripts subdirectory. They are executable, so if you cd into the directory you can do, for example,

   ./setup_tunnel

to tunnel to the DAQ machine. If you're running on Mac or Linux with Firefox, hopefully it will load the page for you. If not, go to a web browser and go to the necessary address.

_NEW TO THIS VERSION:_ You now have the option to not open the browser with the script/icons, instead just making the tunnel(s). This is useful if you wish to use a different browser or for some reason are having trouble getting things to work. If you are running the script, just pass the option -noweb to only make the tunnel. If you are running the desktop icons, then you want to use the option -noweb when you run the icon setup script. That is:

./setup_icons.sh -noweb


NOTES:

(TODO: is there a .desktop equivalent for Mac?)