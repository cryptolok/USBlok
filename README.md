# USBlok
badUSB & RubberDucky & PoisonTap ultimate mitigation for Linux

This is a simple, minimalistic and ultimate way to deal with USB threats in Linux environment.

You might have heard about some pretty complex solutions like [Beamgun](https://jlospinoso.github.io/infosec/usb%20rubber%20ducky/c%23/clr/wpf/.net/security/2016/11/15/usb-rubber-ducky-defeat.html) or even [grsecurity](https://twitter.com/subgraph/status/775746898560811008/photo/1), but you can hardly do as simple and efficient as following.

## How To
First of all, let's follow the fundamentals of security - "Everything, which is not explicitly allowed is forbidden":

as root - `# crontab -e`
  
then add `@reboot echo 0 > /sys/bus/usb/drivers_autoprobe`
  
This will block every USB device from interacting with your system by blocking drivers.

Now, copy usbAccess.sh to a directory by adding execution rights with `$ chmod u+x usbAccess.sh`

Lastly, add an alias to your "~/.bashrc" or "~/.bash_aliases":

`alias usbaccess='sudo $PATH_TO/usbAccess.sh'`

And make sure that you can execute commands through "sudo" with (as root)`# sudoers`

So every time you will enter `$ usbaccess` command, you will have 10 seconds to connect a **trusted** device.

Of-course, a more intelligent solution will be to do a compartmental analysis, but I'm out of budget for now.

### Keep It Simple and Straightforward
