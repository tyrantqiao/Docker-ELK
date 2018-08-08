echo "更改服务器配置用来适应elk的配置要求.........."

if [ `grep "vm.max_map_count=655360" /etc/sysctl.conf` ]; then
   echo "已经修改max_map_count"
else
   echo "vm.max_map_count=655360" > /etc/sysctl.conf
   sysctl -p;
   echo "修改max_map_count.........."
fi

if [ `grep "root soft nofile 6553" /etc/security/limits.conf` ]; then
   echo "已经修改nofile大小"
else
   echo "
root soft nofile 65535
root hard nofile 65535
* soft nofile 65535
* hard nofile 65535" > /etc/security/limits.conf
   echo "修改nofile大小..........."
fi

echo "加载elk镜像................................."
/home/elk/elk-load.sh
