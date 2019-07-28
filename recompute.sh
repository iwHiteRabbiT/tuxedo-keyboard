echo Uninstalling the DKMS Module:
echo
echo --- Remove the dkms module
sudo dkms remove -m tuxedo_keyboard -v 1 --all
echo
echo --- Remove the source
sudo rm -rf /usr/src/tuxedo_keyboard-1
echo
echo
echo Add as DKMS Module:
echo
echo --- At first point add the Module
make clean
sudo cp -R . /usr/src/tuxedo_keyboard-1
sudo dkms add -m tuxedo_keyboard -v 1
echo
echo --- The secound step is compile the module
sudo dkms build -m tuxedo_keyboard -v 1
echo
echo --- Install the DKMS module
sudo dkms install -m tuxedo_keyboard -v 1
echo
echo --- Load the module with modprobe
modprobe tuxedo_keyboard
echo
