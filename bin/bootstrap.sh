# Dependencies.
apt install -y fuse-overlayfs

# Clear symlinks.
rm -f /etc/docker/daemon.js
rm -f /etc/modprobe.d/alsa-base.conf
rm -f /etc/udev/rules.d/99-usb-midi.rules

# Create symlinks.
ln -s /home/pi/figaro/etc/docker/daemon.json /etc/docker/daemon.js
ln -s /home/pi/figaro/etc/modprobe.d/alsa-base.conf /etc/modprobe.d/alsa-base.conf
ln -s /home/pi/figaro/etc/udev/rules.d/99-usb-midi.rules /etc/udev/rules.d/99-usb-midi.rules

# Reload udev rules.
sudo udevadm control --reload-rules
