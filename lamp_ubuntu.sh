sudo apt-get update
sudo apt-get install -y apache2  && apache2ctl configtest
sudo apt-get install mysql-server -y
sudo apt-get install -y php libapache2-mod-php php-mcrypt php-mysql
echo "<?php phpinfo(); ?>" >> /var/www/html/info.php
echo '<?php echo "Everything fine"?>' >> /var/www/html/fine.php
#<?php phpinfo(); ?>

apt-get install -y phpmyadmin
 a=`cat  /etc/apache2/apache2.conf | grep /etc/phpmyadmin/apache.conf`
 if [ "$a" == "" ] ; then  
	echo "Include /etc/phpmyadmin/apache.conf " >> /etc/apache2/apache2.conf ;
 fi
sudo service apache2 restart
