#webapp
dir=$(pwd)
mkdir ~/RAM_test
sudo mount tmpfs -t tmpfs ~/RAM_test/

dd if=/dev/zero of=~/RAM_test/data_tmp bs=1M count=512 2> ~/results/ram_write.out
dd if=/dev/zero of=~/RAM_test/data_tmp bs=1M count=512 2>> ~/results/ram_write.out
dd if=/dev/zero of=~/RAM_test/data_tmp bs=1M count=512 2>> ~/results/ram_write.out