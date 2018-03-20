# Swap ESC and Caps Lock
/usr/bin/setxkbmap -option "caps:swapescape"
                                                                        
# Setup keyboard layouts and switching
/usr/bin/setxkbmap -layout us,ara
/usr/bin/setxkbmap -option 'grp:win_space_toggle'
                                                                        
# Set background image
/usr/bin/feh --bg-scale /usr/share/archlinux/wallpaper/archlinux-simplyblack.png

# Start gnome polkit authentication agent
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1

/usr/lib/fingerprint-gui/fingerprint-polkit-agent -d
