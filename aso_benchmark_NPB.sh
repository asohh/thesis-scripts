#NPB
dir=$(pwd)
sudo yum install -y wget tar
cd ~
wget https://www.nas.nasa.gov/assets/npb/NPB3.4.tar.gz
tar -xvf NPB3.4.tar.gz
rm -f NPB3.4.tar.gz
cd NPB3.4/NPB3.4-OMP

cp $dir/files/NPB/make.def config/make.def
cp $dir/files/NPB/suite.def config/suite.def

sudo yum install -y make gcc gcc-gfortan

make suite

cd bin

./bt.C.x >> ~/results/bt.out
./bt.C.x >> ~/results/bt.out
./bt.C.x >> ~/results/bt.out
echo "bt done"
./cg.C.x >> ~/results/cg.out
./cg.C.x >> ~/results/cg.out
./cg.C.x >> ~/results/cg.out
echo "cg done"
./ep.C.x >> ~/results/ep.out
./ep.C.x >> ~/results/ep.out
./ep.C.x >> ~/results/ep.out
echo "ep done"
./ft.C.x >> ~/results/ft.out
./ft.C.x >> ~/results/ft.out
./ft.C.x >> ~/results/ft.out
echo "ft done"
./is.C.x >> ~/results/is.out
./is.C.x >> ~/results/is.out
./is.C.x >> ~/results/is.out
echo "is done"
./lu.C.x >> ~/results/lu.out
./lu.C.x >> ~/results/lu.out
./lu.C.x >> ~/results/lu.out
echo "lu done"
./mg.C.x >> ~/results/mg.out
./mg.C.x >> ~/results/mg.out
./mg.C.x >> ~/results/mg.out
echo "mg done"
./sp.C.x >> ~/results/sp.out
./sp.C.x >> ~/results/sp.out
./sp.C.x >> ~/results/sp.out
echo "sp done"
./ua.C.x >> ~/results/ua.out
./ua.C.x >> ~/results/ua.out
./ua.C.x >> ~/results/ua.out






