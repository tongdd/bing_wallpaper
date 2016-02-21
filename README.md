## What does it do?

This simple set of scripts will add a Bing Wallpaper switcher to Mac OS X 10.10 to 10.11.3.
Future versions untested.

## How to install?

Open `./setup.sh` and change the variables as required.
`chmod +x ./setup.sh`
Then run `sudo ./setup.sh`

### What's the installer doing?

It's loading the script to change the wallpaper into /var/whscripts/ and it adding it to launchctl. :)

### What if I want to remove it?

I've included an uninstaller that will remove all of the files, just `sudo chmod +x ./uninstall.sh && ./uninstall.sh` to remove all of the files.

### Things to note:

This will keep the files stored in ~/Pictures/Bing as they're downloaded. If you want to delete after download, add `rm $WALLPAPERS$FILENAME` to the bottom of `./bing_wallpaper.sh` before you install.
