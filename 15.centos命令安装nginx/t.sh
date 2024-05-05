使用yum install -y nginx

systemctl restart nginx;
systemctl enable nginx;

卸载yum -y remove nginx


这样安装之后，nginx的配置文件在/etc/nginx路径下
按照之前的配置方法进行配置即可
