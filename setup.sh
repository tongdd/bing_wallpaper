## SET THIS RESOLUTION TO WHAT YOU WANT

# Change the following option to one of the resolutions below
# "_1024x768" "_1280x720" "_1366x768" "_1920x1200"

RES="_1920x1200"
## SET THIS TO YOUR BING REGION

# VALID REGION FORMATS: en-AU en-US
# https://msdn.microsoft.com/en-us/library/ee799297(v=cs.20).aspx
REGION="en-AU"

## NO TOUCHY

echo 'RES='$RES > /tmp/bing_wallpaper
echo 'REGION='$REGION >> /tmp/bing_wallpaper
cat ./bing_wallpaper.sh >> /tmp/bing_wallpaper

mkdir -p /var/whscripts/

cp /tmp/bing_wallpaper /var/whscripts/
chmod a+x /var/whscripts/bing_wallpaper

cp ./bing_wallpaper.plist /Library/LaunchDaemons/com.willhackett.bingwallpaper.plist
launchctl load -w /Library/LaunchDaemons/com.willhackett.bingwallpaper.plist

rm /tmp/bing_wallpaper
echo "Installation done; running now for good luck!"
/var/whscripts/bing_wallpaper
