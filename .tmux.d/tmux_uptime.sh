#!/bin/sh

## 定数変数
TMUX_COLOR_NORMAL='#[fg=colour7]'

## コマンドチェック
if ! [ -f /usr/bin/uptime ] ; then
  echo "free is not found!"
  exit 1
fi

## 稼働時間の抜き出し
get_uptime() {
    # 数値取得
    COM_UPTIME=$(/usr/bin/uptime)

    TMUX_UPTIME=$(echo "$COM_UPTIME" | /bin/sed -e 's/.* up *\(.*\)/\1/' -e 's/\(.*\),.* user.*/\1/' | /usr/bin/awk -F, '{print $1 $2}' | /usr/bin/tr -s ' ')

    #RET
    RETURN_STRINGS="${TMUX_COLOR_NORMAL}Up:${TMUX_UPTIME}"
    echo "${RETURN_STRINGS}"
    return 0
}


RET=0

## メインルーチン
get_uptime
RET=$?

## 終了コード
exit $RET
