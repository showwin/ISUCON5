#!/bin/bash

set -eu

#Incoming WebHooksのURL
WEBHOOKURL="https://hooks.slack.com/services/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"
#メッセージを保存する一時ファイル
MESSAGEFILE=$(mktemp -t slack-XXX)
trap "
rm ${MESSAGEFILE}
" 0

usage_exit() {
    echo "Usage: $0 [-m message] [-c channel] [-i icon] [-n botname]" 1>&2
    exit 0
}

while getopts c:i:n:m: opts
do
    case $opts in
        c)
            CHANNEL=$OPTARG
            ;;
        i)
            FACEICON=$OPTARG
            ;;
        n)
            BOTNAME=$OPTARG
            ;;
        m)
            MESSAGE=$OPTARG"\n"
            ;;
        \?)
            usage_exit
            ;;
    esac
done
#slack 送信チャンネル
CHANNEL=${CHANNEL:-"#isucon"}
#slack 送信名
BOTNAME=${BOTNAME:-"Benchmark Digest"}
#slack アイコン
FACEICON=${FACEICON:-":shin:"}
#見出しとなるようなメッセージ
MESSAGE=${MESSAGE:-""}

if [ -p /dev/stdin ] ; then
    #改行コードをslack用に変換
    cat - | tr '\n' '\\' | sed 's/\\/\\n/g'  > ${MESSAGEFILE}
else
    echo "nothing stdin"
    exit 1
fi

WEBMESSAGE=`cat ${MESSAGEFILE}`

#Incoming WebHooks送信
curl -s -S -X POST --data-urlencode "payload={\"channel\": \"${CHANNEL}\", \"username\": \"${BOTNAME}\", \"icon_emoji\": \"${FACEICON}\", \"text\": \"${MESSAGE}${WEBMESSAGE}\" }" ${WEBHOOKURL} >/dev/null
