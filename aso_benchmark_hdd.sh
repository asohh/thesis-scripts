#HDD
dir=$(pwd)
cd ~


hdparm -T /dev/$1 > ~/results/disk_read_bufferd.out
hdparm -T /dev/$1 >> ~/results/disk_read_bufferd.out
hdparm -T /dev/$1 >> ~/results/disk_read_bufferd.out


dd if=/dev/zero of=/tmp/test1.img bs=1G count=1 oflag=dsync 2> ~/results/disk_write.out
dd if=/dev/zero of=/tmp/test2.img bs=64M count=1 oflag=dsync 2>> ~/results/disk_write.out
dd if=/dev/zero of=/tmp/test3.img bs=1M count=256 conv=fdatasync 2>> ~/results/disk_write.out
dd if=/dev/zero of=/tmp/test4.img bs=1M count=25 conv=fdatasync 2>> ~/results/disk_write.out
dd if=/dev/zero of=/tmp/test5.img bs=1M count=10 conv=fdatasync 2>> ~/results/disk_write.out

dd if=/dev/zero of=/tmp/test1.img bs=1G count=1 oflag=dsync 2>> ~/results/disk_write.out
dd if=/dev/zero of=/tmp/test2.img bs=64M count=1 oflag=dsync 2>> ~/results/disk_write.out
dd if=/dev/zero of=/tmp/test3.img bs=1M count=256 conv=fdatasync 2>> ~/results/disk_write.out
dd if=/dev/zero of=/tmp/test4.img bs=1M count=25 conv=fdatasync 2>> ~/results/disk_write.out
dd if=/dev/zero of=/tmp/test5.img bs=1M count=10 conv=fdatasync 2>> ~/results/disk_write.out

dd if=/dev/zero of=/tmp/test1.img bs=1G count=1 oflag=dsync 2>> ~/results/disk_write.out
dd if=/dev/zero of=/tmp/test2.img bs=64M count=1 oflag=dsync 2>> ~/results/disk_write.out
dd if=/dev/zero of=/tmp/test3.img bs=1M count=256 conv=fdatasync 2>> ~/results/disk_write.out
dd if=/dev/zero of=/tmp/test4.img bs=1M count=25 conv=fdatasync 2>> ~/results/disk_write.out
dd if=/dev/zero of=/tmp/test5.img bs=1M count=10 conv=fdatasync 2>> ~/results/disk_write.out