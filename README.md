# steam-flatpak-udev-fix
A small script that downloads and installs the steam controller udev rules needed for full controller support with the steam flatpak

Clone this repository and run ./install.sh. You also have to make sure your user is in the `input` group.

```
usermod -aG input yourusername
```

On Silverblue, you have to copy the input group into your /etc/group first
```
grep -E '^input:' /usr/lib/group >> /etc/group
```
