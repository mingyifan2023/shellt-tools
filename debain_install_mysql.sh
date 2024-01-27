
# install mariadb

sudo apt update
sudo apt install mariadb-server
sudo systemctl status mariadb
sudo mysql_secure_installation




# install mysql 
wget https://repo.mysql.com/mysql-apt-config_0.8.29-1_all.deb

sudo dpkg -i mysql-apt-config_0.8.29-1_all.deb


sudo apt update
sudo apt install mysql-server

sudo systemctl status mysql
sudo mysql_secure_installation


