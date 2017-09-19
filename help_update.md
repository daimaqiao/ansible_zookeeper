# 找到systemd配置文件
1. /usr/lib/systemd/system/zookeeper.service
2. /etc/systemd/system/zookeeper.service
> （通常是位置1，不过位置2的优先级高）

---
# 添加Restart控制项
在[Service]节添加下面控制项，允许服务进程因故退出后被系统重新启动：

Restart=always  
RestartSec=30  
StartLimitInterval=30  
StartLimitBurst=1  

---
# 找到zookeeper配置文件
- /opt/zookeeper-3.4.8/conf/zoo.cfg
> （在zookeeper目录下的conf子目录中）

---
# 添加日志控制策略
Zookeeper 3.4.0及以后版本允许在配置文件中添加自动清理日志的配置项。下面配置表示：每周（168小时）清理一次zookeeper的日志（含snapshot和transaction），最终只保留最近10份日志文件。

autopurge.snapRetainCount=10  
autopurge.purgeInterval=168  

---
# 关于zookeeper的log4j
可以为zookeeper添加log4j的配置文件，用来保存输出在屏幕上的工作日志。
- /opt/zookeeper-3.4.8/conf/log4j.properties
> （在zookeeper目录下的conf子目录中）
