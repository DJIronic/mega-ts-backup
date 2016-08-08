verze=$(wget -qO- https://megatools.megous.com/VERSION)
echo "$verze"
sudo apt-get update && sudo apt-get install libglib2.0-dev libtool autoconf glib-networking fuse curl wget gettext  gobject-introspection libcurl4-openssl-dev -y
sudo apt-get install lib32gmp-dev lib32gmp10 lib32gmpxx4 libgmp-dev libgmp10 libgmp3-dev -y
wget https://ftp.gnu.org/gnu/nettle/nettle-3.0.tar.gz && tar xvf nettle-3.0.tar.gz  && cd nettle-3.0/ && ./configure && make && sudo make install && cd ../
wget http://megatools.megous.com/builds/megatools-$verze.tar.gz && tar xvf megatools-$verze.tar.gz && cd megatools-$verze/ && ./configure && make && sudo make install
sudo cp megatools-1.9.93/mega/.libs/libmega.so.0 /usr/lib
