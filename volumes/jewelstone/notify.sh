#!/bin/sh

curl https://notify-api.line.me/api/notify \
    -X POST \
    -H "Authorization: Bearer $LINE_TOKEN" \
    -F 'message=ジュエルストーンからジュエルを回収しましょう'
