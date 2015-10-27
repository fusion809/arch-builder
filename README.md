Arch Builder
===========
Arch Builder are a collection of files that can be used to create an Arch Linux VirtualBox machine. The beauty of these tools is that they require no technical no-how on behalf of the user. Simply, open up a terminal (<kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>T</kbd>), `cd` to the Arch Builder directory and run:

    packer build -only=virtualbox-iso arch-template.json

The installation script follows the
[official installation guide](https://wiki.archlinux.org/index.php/Installation_Guide)
pretty closely, with a few tweaks to ensure functionality within a VM. Beyond
that, the only customizations to the machine are related to the vagrant user
and the steps recommended for any base box.

Usage
-----

Assuming that you already have Packer and
[VirtualBox](https://www.virtualbox.org/) you
should be good to clone this repo and go:

    $ git clone https://github.com/elasticdog/packer-arch.git
    $ cd packer-arch/
    $ packer build -only=virtualbox-iso arch-template.json

License
-------

Packer Arch is provided under the terms of the
[ISC License](https://en.wikipedia.org/wiki/ISC_license).

Copyright &copy; 2013&#8211;2015, [Aaron Bull Schaefer](mailto:aaron@elasticdog.com) & [Brenton Horne](mailto:brentonhorne77@gmail.com).
