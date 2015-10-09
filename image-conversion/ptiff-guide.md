# Setting up to make Pyramidal TIFF Images

In the VM's Terminal…

1. `sudo apt-get install -f`
1. `sudo apt-get install nip2`
1. `sudo apt-get install libvips-tools`

To convert a file…

1. Put a `.jpg` file in `/vagrant/furman/image-conversion/jpg/`
1. `cd /vagrant/furman/image-conversion/jpg`
1. `../make_ptiff.sh *.jpg`

Find your pTiff files in `/vagrant/furman/image-conversion/ptiff`






