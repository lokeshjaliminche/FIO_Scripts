#echo 2000000 >  /sys/block/nvme0n1/queue/iosched/read_lat_nsec
#sleep 2
#fio web2.fio --output=./output/web2_kyber_21.log 

#echo 1000000 >  /sys/block/nvme0n1/queue/iosched/read_lat_nsec
#sleep 2
#fio web2.fio --output=./output/web2_kyber_22.log 
#echo 500000 >  /sys/block/nvme0n1/queue/iosched/read_lat_nsec
#sleep 2
#fio web2.fio --output=./output/web2_kyber_23.log 
#echo 250000 >  /sys/block/nvme0n1/queue/iosched/read_lat_nsec
#sleep 2
#fio web2.fio --output=./output/web2_kyber_24.log 
#echo 100000 >  /sys/block/nvme0n1/queue/iosched/read_lat_nsec
#sleep 2
#fio web2.fio --output=./output/web2_kyber_25.log 

#fio web2.fio --output=./output/web1_none_sync_1024_iter1.log --output-format=json
#fio web1.fio --output=./output/web1_kyber_libaio_1024.log --output-format=json
#fio web1.fio --output=./output/web1_kyber_libaio_1024.log --output-format=json
echo none > /sys/block/nvme0n1/queue/scheduler
sleep 2
fio 17april_1.fio --output=./april16/april17_0.log
echo kyber > /sys/block/nvme0n1/queue/scheduler
sleep 2
echo 10000000-10000000
echo 10000000 > /sys/block/nvme0n1/queue/iosched/read_lat_nsec
sleep 2
fio 17april_1.fio --output=./april16/april17_1.log

echo 5000000-10000000
echo 5000000 > /sys/block/nvme0n1/queue/iosched/read_lat_nsec
sleep 2
fio 17april_1.fio --output=./april16/april17_2.log

echo 2000000-10000000
echo 2000000 > /sys/block/nvme0n1/queue/iosched/read_lat_nsec
sleep 2
fio 17april_1.fio --output=./april16/april17_3.log

echo 1000000-10000000
echo 1000000 > /sys/block/nvme0n1/queue/iosched/read_lat_nsec
sleep 2
fio 17april_1.fio --output=./april16/april17_4.log

echo 500000-10000000
echo 500000 > /sys/block/nvme0n1/queue/iosched/read_lat_nsec
sleep 2
fio 17april_1.fio --output=./april16/april17_5.log

echo 10000000-5000000
echo 10000000 > /sys/block/nvme0n1/queue/iosched/read_lat_nsec
echo 5000000 > /sys/block/nvme0n1/queue/iosched/write_lat_nsec
sleep 2
fio 17april_1.fio --output=./april16/april17_6.log

echo 10000000-2000000
echo 2000000 > /sys/block/nvme0n1/queue/iosched/write_lat_nsec
sleep 2
fio 17april_1.fio --output=./april16/april17_7.log

echo 10000000-1000000
echo 1000000 > /sys/block/nvme0n1/queue/iosched/write_lat_nsec
sleep 2
fio 17april_1.fio --output=./april16/april17_8.log

echo 10000000-500000
echo 500000 > /sys/block/nvme0n1/queue/iosched/write_lat_nsec
sleep 2
fio 17april_1.fio --output=./april16/april17_9.log
 #fio single.fio > april16/mix_kyber_2.log #cho 5000000 > /sys/block/nvme0n1/queue/iosched/read_lat_nsec
