# Within HMT VM, run HMT-MOM's palView task:


PALFILE=/vagrant/furman/206r/collections/paleography.csv



cd /vagrant/hmt-mom

gradle -Ppaleo=$PALFILE palView

