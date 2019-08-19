#webapp
dir=$(pwd)
sudo yum install -y mariadb-server httpd php-mysqlnd php-fpm curl tar

sudo firewall-cmd --permanent --zone=public --add-service=http 
sudo firewall-cmd --reload

sudo systemctl enable mariadb --now
sudo systemctl enable httpd --now

mysql -uroot < $dir/web/db_setup.sql

curl https://wordpress.org/latest.tar.gz --output wordpress.tar.gz
tar -xvf wordpress.tar.gz

sudo cp -r wordpress /var/www/html
sudo chown -R apache:apache /var/www/html/wordpress
sudo chcon -t httpd_sys_rw_content_t /var/www/html/wordpress -R


echo "Setup done"
echo "please follow the instructions on the website"
echo "username for the wordpress db is admin an dthe password is pass"
