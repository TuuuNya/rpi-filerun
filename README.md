# rpi-filerun

Filerun + Aria2 + AriaNg 搭建可离线下载的云盘 for 树莓派

# install

因为Mysql占内存太大了，所以我是在服务器上部署了Mysql，开启远程连接。

所以该镜像需要配置`php/autoconfig.php`和`php/import-db.sh`里面的数据库配置。

然后`docker-compose up -d`即可启动服务。

然后访问树莓派的`8000`端口即可看到Web界面。

离线下载的AriaNg在`dweb`目录下面，比如：`http://pi:8000/dweb/`即可访问。
