sudo apt-get install git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison -y
cp /boot/config-$(uname -r) .config

make menuconfig
make -j8

make modules_install
make install
