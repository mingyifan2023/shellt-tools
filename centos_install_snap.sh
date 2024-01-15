sudo yum install epel-release

sudo yum -y install yum-plugin-copr
sudo yum -y copr enable ngompa/snapcore-el7
sudo yum -y install snapd
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
