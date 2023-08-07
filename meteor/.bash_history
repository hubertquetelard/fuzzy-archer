df -h
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install vim
sudo visudo
date
sudo dpkg-reconfigure lang
sudo dpkg-reconfigure
sudo dpkg-reconfigure --help
sudo dpkg-reconfigure tzdata
sudo dpkg-reconfigure
sudo dpkg-reconfigure tzdata
sudo dpkg-reconfigure locales
sudo vim /etc/environment
sudo vim /etc/bash.bashrc
sudo adduser weewx -shell /bin/bash -home /srv/weewx
sudo adduser meteor weewx
sudo apt-get install python3-virtualenv
sudo virtualenv --python=python3.9 --prompt=\(virtualenv)\) /srv/weewx/virtualenv
sudo virtualenv --python=python3.9 --prompt=\(virtualenv\) /srv/weewx/virtualenv
METEOR_USER=meteor
sudo addgroup $METEOR_USER weewx
sudo chown -R weewx:weewx /srv/weewx
sudo chmod -R g+w /srv/weewx
exit
cd /srv/weewx/virtualenv && source bin/activate
pip install -U pip
sudo apt-get install python-dev rsync
sudo apt-get install python3-dev rsync
cat /etc/os-release
sudo apt-get install libopenjp2-7
pip install configobj Cheetah3 pyserial pyusb pyephem
pip install Pillow==9.4.0
exit
su - weewx
cat /dev/urandom| tr -dc 'a-zA-Z0-9-_!$%()_+|:?='|fold -w 10| head -n 4| grep -i '[!@#$%^&*()_+{}|:<>?=]'
sudo apt-get install mariadb-server
sudo apt-get install libmysqld-dev
cd /srv/weewx/virtualenv && source bin/activate
pip install mysql-client
exit
sudo chown -r weewx:weewx /srv/weewx/virtualenv
sudo chown -R weewx:weewx /srv/weewx/virtualenv
sudo mysql -u root
sudo mysql -u weewx -p
sudo vi /etc/udev/rules.d/vpro.rules
sudo apt-get install fonts-freefont-ttf
sudo pip install configobj
sudo apt-get install python3-virtualenv
sudo virtualenv --python=python3.9 --prompt=\(virtualenv\) /srv/weewx/virtualenv
sudo chown -R weewx:weewx /srv/weewx
sudo chmod -R g+w /srv/weewx
cd /srv/weewx/virtualenv && source bin/activate
pip install -U pip
exit
cd /srv/weewx/virtualenv && source bin/activate
pip uninstall -U pip
pip uninstall pip
exit
sudo pip install configobj
sudo rm -rf /srv/weewx/virtualenv
sudo virtualenv --python=python3.9 --prompt=\(virtualenv\) /srv/weewx/virtualenv
sudo chown -R weewx:weewx /srv/weewx
sudo chmod -R g+w /srv/weewx
sudo apt-get install python3-virtualenv
sudo virtualenv --python=python3.9 --prompt=\(virtualenv\) /srv/weewx/virtualenv
sudo chown -R weewx:weewx /srv/weewx
sudo chmod -R g+w /srv/weewx
sudo rm -rf /srv/weewx/virtualenv /srv/weewx/root
sudo virtualenv --python=python3.9 --prompt=\(virtualenv\) /srv/weewx/virtualenv
sudo chown -R weewx:weewx /srv/weewx
sudo chmod -R g+w /srv/weewx
exit
ls -l
ls -altr
exit
sudo service ssh reload
sudo journalctl _COMM=sshd
sudo find / -name 'sshd_config -print
'
cd /
sudo find / -name 'sshd_config' -print
vim /etc/ssh/sshd_config
ls -l /etc/ssh/sshd_config.d
ls -l /var/log
sudo vim /var/log/auth.log
sudo tail -f /var/log/authlog  -n 50 | grep weewx
sudo tail -f /var/log/auth.log  -n 50 | grep weewx
ls -l ..
pwd
cd
ls -l ..
ls -altr
ls -ls
ls -l
pwd
ls -l upgrade/weewx-4.10.2-1/meteor
ls -l /srv/weewx/upgrade/weewx-4.10.2-1/meteor
cp -r /srv/weewx/upgrade/weewx-4.10.2-1/meteor *.*
sudo cp -r /srv/weewx/upgrade/weewx-4.10.2-1/meteor *.*
sudo cp -r /srv/weewx/upgrade/weewx-4.10.2-1/meteor *
ls -l
rm '*.*'
rm -rf '*.*'
sudo rm -rf '*.*'
sudo cp -r /srv/weewx/upgrade/weewx-4.10.2-1/meteor/*.* .
sudo cp -r /srv/weewx/upgrade/weewx-4.10.2-1/meteor/* .
ls -l
sudo chown -R meteor:meteor .
ls -l
vim fabfile.py
vim vp2_set_EU.py
vim weewx_cron
sudo cp /srv/weewx/upgrade/weewx-4.10.2-1/cron.weewx weewx_cron
vim weewx_cron
sudo cp /srv/weewx/upgrade/weewx-4.10.2-1/weewx.service .
vim weewx.service
ln --help
ln -s /srv/weewx/scripts/rasp04_send_ssh_key.sh rasp04_send_ssh_key.sh
ls -l
rm /srv/weewx/scripts/rasp04_send_ssh_key.sh
rm rasp04_send_ssh_key.sh
ls -l
cd meteoroi_scripts
ls -l
ln -s /srv/weewx/scripts/rasp04_send_ssh_key.sh rasp04_send_ssh_key.sh
ls -l
vim rasp00_bootstrap.py
vim rasp02_get_vpn_files.sh
env
q!
ls -l
vim rasp03_install_vpn_files.sh
vim test.conf
vim test_skin.conf
vim bash.bashrc.test
vim environment.test
vim rasp00_bootstrap.py
./rasp02_get_vpn_files.sh
cd ..
ls -l
tar -xvf VPN_XXX000.tar.gz
cd mete*
ls -l
vim rasp02_get_vpn_files.sh
./rasp02_get_vpn_files.sh
wget  http://obs.meteor-oi.re/files/VPN_MTG320.tar.gz
wget http://stations.meteor-oi.re/VPN_MTG320.tar.gz
ls -l
vim test.conf
grep -r 'test.conf'
grep -r 'test_skin.conf'
vim test.conf
vim test_skin.conf
vim environment.test
vim test_skin.conf
vim test_skin_json.conf
vim rasp06_setup_weewx.py
ls -l
cd
ls -l
cd mete*
ls -l
ls -l utils
ls -l template
ls -l templates
vim templates/environment.tpl
vim templates/skin_bootstrap.conf.tpl
grep -r 'XXX111'
grep -r 'XXX000'
cd
grep -r 'XXX000'
grep -r 'XXX111'
ls -l
cd mete*
grep -r 'XXX111'
ls -l
vim environment.test
vim bash.bashrc.test
vim test_skin.conf
vim test_skin_json.conf
vim test_json.conf
cd templates
ls -l
vim skin_bootstrap.conf.tpl
vim environment.tpl
vim skin_bootstrap.conf.tpl
vim skin_images.conf.tpl
vim weewx.conf.tpl
exit
ssh root@jenny.meteor-oi.re
vim .ssh
cd scripts_meteoroi
ls
cd meteoroi_scripts
ls -l
cd templates
ls -l
vim weewx.conf.tpl
cp test_json.conf templates/weewx_json.conf.tpl
cp ../test_json.conf weewx_json.conf.tpl
vim weewx_json.conf.tpl
cp ../test_skin_json.conf skin_json.conf.tpl
vim skin_json.conf.tpl
cd ..
ls -l /srv/weewx/root/util/import
ls -l /srv/weewx/upgrade/fuzzy-archer-1.0.0-weewx-4.10.2-1/util/import
ls -l
cp /srv/weewx/root/util/import/wu-meteoroi.conf test_wu_import.conf
vim test_wu_import.conf
cp test_wu_import.conf templates/wu-meteoroi.conf.tpl
vim templates/wu-meteoroi.conf.tpl
ls -l
ls -l ..
vim rasp06_setup_weewx.py
ls -l templates
vim rasp06_setup_weewx.py
exit
