# Arch Builder
The **Arch Builder** is a collection of files that can be used to create an Arch Linux VirtualBox machine (AL-VBM). The beauty of these tools is that they require minimal technical no-how on behalf of the user. Assuming you have [Packer](https://packer.io) installed, simply, open up a terminal (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>T</kbd>), clone this repository (`git clone https://github.com/fusion809/arch-builder`), `cd` to the Arch Builder directory and run:

    packer build -only=virtualbox-iso arch-template.json

in order to get a **minimalist AL-VBM**. This command will probably take over an hour to complete its task and will require a good internet connection. By a *minimalist* AL-VBM, it is meant that only tools that come with a default Arch Linux installation along with a couple that were necessary to create the VM, are present on this AL-VBM.

You can also use the `install-virtualbox.sh` script to install Arch Linux on a physical hard drive (non-virtual). To do this run;

    wget http://bit.ly/1kcYOr1 -O- > install.sh
    chmod +x install.sh
    ./install.sh

alternatively you can use `install-rmdrive.sh` to install Arch Linux on a removable drive. To do this run:

    wget http://bit.ly/1OJ48KU -O- > install.sh
    chmod +x install.sh
    ./install.sh

alternatively to use `install.sh` run:

    wget http://bit.ly/1QJ7yDr -O- > install.sh
    chmod +x install.sh
    ./install.sh

## Untested scripts
These scripts I have not actually run, because running these packer commands takes at least an hour to run. Whereas to get an otherwise minimalist AL-VBM with [`ps_mem`](https://github.com/pixelb/ps_mem/) ready to perform RAM testing run:

    packer build -only=virtualbox-iso arch-template_ps-mem.json

while to get AL-ABM with the [Deepin Desktop Environment](https://wiki.archlinux.org/index.php/Deepin_Desktop_Environment) pre-installed run:

    packer build -only=virtualbox-iso arch-template_dde.json

# About
The installation script follows the
[official installation guide](https://wiki.archlinux.org/index.php/Installation_Guide)
pretty closely, with a few tweaks to ensure functionality within a VM. Beyond
that, the only customizations to the machine are related to the vagrant user
and the steps recommended for any base box. Username is vagrant, password is vagrant. Root password is vagrant.

# License
Arch Builder is provided under the terms of the
[ISC License](https://en.wikipedia.org/wiki/ISC_license).

Copyright &copy; 2013&#8211;2015, [Aaron Bull Schaefer](mailto:aaron@elasticdog.com) & [Brenton Horne](mailto:brentonhorne77@gmail.com).
