#webapp
dir=$(pwd)
sudo yum install -y git-core golang

cd ~
rm -rf go
rm -rf node_exporter
git clone https://github.com/prometheus/node_exporter/
cd node_exporter
git checkout 3db77732e925c08f675d7404a8c46466b2ece83e

date > ~/results/compile.out
make
date >> ~/results/compile.out

cd ~
rm -rf go
rm -rf node_exporter
git clone https://github.com/prometheus/node_exporter/
cd node_exporter
git checkout 3db77732e925c08f675d7404a8c46466b2ece83e

date >> ~/results/compile.out
make
date >> ~/results/compile.out

cd ~
rm -rf go
rm -rf node_exporter
git clone https://github.com/prometheus/node_exporter/
cd node_exporter
git checkout 3db77732e925c08f675d7404a8c46466b2ece83e

date >> ~/results/compile.out
make
date >> ~/results/compile.out
