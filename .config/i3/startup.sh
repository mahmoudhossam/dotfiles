# Setup keyboard layouts and switching
/usr/bin/setxkbmap -layout us,ara
/usr/bin/setxkbmap -option 'grp:win_space_toggle'

# Enable Num Lock
/usr/bin/numlockx on
                                                                        
# Set background image
/usr/bin/feh --bg-scale /usr/share/backgrounds/archlinux/archlinux-simplyblack.png

# Start gnome polkit authentication agent
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
