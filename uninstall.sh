### This will remove all of the files that this script added

launchctl unload -w /Library/LaunchDaemons/com.willhackett.bingwallpaper.plist
rm /Library/LaunchDaemons/com.willhackett.bingwallpaper.plist
rm /var/whscripts/bing_wappaper
rm -rf $HOME/Pictures/Bing
