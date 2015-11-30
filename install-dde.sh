printf "[home_metakcahura_arch-deepin_Arch_Extra]\nSigLevel = Never\nServer = http://download.opensuse.org/repositories/home:/metakcahura:/arch-deepin/Arch_Extra/$arch\nServer = http://anorien.csc.warwick.ac.uk/mirrors/download.opensuse.org/repositories/home:/metakcahura:/arch-deepin/Arch_Extra/$arch" >> /etc/pacman.conf
/usr/bin/pacman -Sy lightdm lightdm-deepin-greeter deepin deepin-extra
printf "[SeatDefaults]\ngreeter-session=lightdm-deepin-greeter" >> /etc/lightdm/lightdm.conf
