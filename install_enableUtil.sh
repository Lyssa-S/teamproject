#!/bin/sh
echo "Enter user dir to build to:"
read varname

sudo apt-get update
sudo apt install numactl -y

chmod +x /local/repository/runLocal.sh
chmod +x /local/repository/runDocker.sh
chmod +x /local/repository/runAll.sh
chmod +x /local/repository/runAllImage.sh

mkdir -p /users/$varname/RandomAccess

cp /local/repository/* /users/$varname/RandomAccess

cd /users/$varname/RandomAccess
mkdir bin
make $all
