#!stateconf yaml . jinja

.install_php:
  pkg.installed:
    - pkgs:
      - php
      - php-mysql
      - php-fpm
      - php-curl
      - php-gd
      - php-json
      - php-mcrypt
      - php-zip
      - php-mbstring
      - php-xml
      - php-xmlrpc

.place_php_ini_file:
  file.managed:
    - name: /etc/php/7.0/fpm/php.ini
    - source: salt://nodes/php/php.ini.template
    - user: {{ grains['deescalated_user'] }}
    - group: {{ grains['deescalated_user'] }}

.sudo_service_php7fpm_restart:
  cmd.run:
    - name: sudo systemctl restart php7.0-fpm

.php_index_file:
  file.managed:
    - name: /var/www/html/index.php
    - source: salt://nodes/php/index.php.template

.php_info_file:
  file.managed:
    - name: /var/www/html/info.php
    - source: salt://nodes/php/info.php.template
