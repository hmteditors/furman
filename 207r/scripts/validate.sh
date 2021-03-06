
if [ "$#" -ne 1 ]; then
    echo "Usage: sh validate.sh URN"
    exit
fi


echo "Verifying from configuration in /vagrant/furman/207r/configs/vm-mom-config.gradle validate"


cd /vagrant/hmt-mom

echo "Cleaning previous HMT MOM results..."
gradle clean

echo Beginning verification for folio $1

gradle -Pfolio=$1 -Pconf=/vagrant/furman/207r/configs/vm-mom-config.gradle validate

