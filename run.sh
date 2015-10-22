#!/bin/bash

# start ssh service
/usr/sbin/sshd &

# start nginx service
/usr/sbin/nginx

# start php-fpm service
/usr/sbin/php-fpm &