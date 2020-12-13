apt update
apt install php libapache2-mod-php php-mbstring php-xmlrpc php-soap php-gd php-xml php-cli php-zip
apt install curl
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
chmod +x /usr/local/bin/composer
source ~/.bashrc
composer create-project --prefer-dist yiisoft/yii2-app-basic project
php yii serve