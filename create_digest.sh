#!/bin/bash

# 引数に出力ファイル名
if [ $# -lt 1 ]; then
  echo "ファイルに付ける名前を引数として渡してください"
  echo "実行例: $ make_profile.sh 1210"
  echo ""
  echo "Slackにアップロードする場合"
  echo "実行例: $ make_profile.sh 1230 slack"
  exit 1
fi

# log/ にディレクトリ作成
rm -rf /home/isucon/log/$1
mkdir /home/isucon/log/$1

# プロファイリングの結果作成
echo "Creating Digest ..."
pt-query-digest /tmp/slow.log > /home/isucon/log/$1/mysql-digest-$1.txt
cat /tmp/access.log | kataribe > /home/isucon/log/$1/nginx-digest-$1.txt

echo "Deleting Log ..."
# 次回に備える
echo '' > /tmp/access.log
echo '' > /tmp/slow.log

# S3/Slackに投稿する場合
if [ "$2" = "slack" ]; then
  echo "Posting Digest file to Slack ..."
  aws s3 cp /home/isucon/log/$1 s3://isucon-profiles --acl public-read --recursive
  echo "ベンチマーク結果のアップロードが成功しました。" | ./slack.sh
  echo "https://s3-ap-northeast-1.amazonaws.com/isucon-profiles/mysql-digest-$1.txt" | ./slack.sh
  echo "https://s3-ap-northeast-1.amazonaws.com/isucon-profiles/nginx-digest-$1.txt" | ./slack.sh
fi

echo "Finish!"
