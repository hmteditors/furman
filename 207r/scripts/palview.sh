# Within HMT VM, run HMT-MOM's palView task:


PALFILE=/vagrant/furman/207r/collections/paleography.csv



cd /vagrant/hmt-mom

gradle -Ppaleo=$PALFILE palView

