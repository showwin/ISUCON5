#!/bin/bash

if [ $# -eq 1 ]; then
  commit_message="${1}"
else
  echo 'no commit message'
  exit 1
fi

if [ -e ./etc ]; then
  :
else
  mkdir etc
fi

if [ -e ./etc/nginx ]; then
  :
else
  mkdir etc/nginx
fi

if [ -e ./etc/httpd ]; then
  :
else
  mkdir etc/httpd
fi

# 設定ファイルコピー
sudo cp /etc/mysql/mysql.conf.d/mysqld.cnf ./etc
sudo cp /etc/redis.conf ./etc
sudo cp /etc/nginx/* ./etc/nginx
sudo cp /etc/httpd/* ./etc/httpd

branch_name=`git rev-parse --abbrev-ref HEAD`

git add .

git commit -m "${commit_message}"

git push origin ${branch_name}
