/usr/bin/pacman -S git --noconfirm
git clone https://github.com/pixelb/ps_mem/ /home/vagrant/ps_mem
printf "function ps_mem {\n python /home/vagrant/ps_mem/ps_mem.py -p "'$@'" \n}" >> ~/.bashrc
