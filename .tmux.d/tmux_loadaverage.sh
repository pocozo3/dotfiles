#!/bin/sh

## 定数変数
TMUX_COLOR_NORMAL='#[fg=colour7]'
TMUX_COLOR_HIGHAVR='#[fg=colour9]'

## コマンドチェック
if ! [ -f /usr/bin/uptime ] ; then
  echo "uptime is not found!"
  exit 1
fi

## サブ関数
##   - アベレージの数値がコア数を上回ったかどうかの判定を行い、
##     表示色の選択を行う
sub_color_select() {
    # 数値取得
    CPU_CORE=$(/bin/cat /proc/cpuinfo | /bin/grep processor | wc -l)

    X=`echo "$1 < $CPU_CORE" | /usr/bin/bc`
    if [ $X -eq 1 ] ; then
        echo $TMUX_COLOR_NORMAL
      else
        echo $TMUX_COLOR_HIGHAVR
    fi
}

## ロードアベレージ取得
get_load_average() {
    # 数値取得
    COM_UPTIME=$(/usr/bin/uptime)

    UPTIME_1M=$(echo "$COM_UPTIME" | /usr/bin/awk -F, '{print $3 $4 $5}' | /usr/bin/cut -f 5 -d " ")
    UPTIME_5M=$(echo "$COM_UPTIME" | /usr/bin/awk -F, '{print $3 $4 $5}' | /usr/bin/cut -f 6 -d " ")
    UPTIME_15M=$(echo "$COM_UPTIME" | /usr/bin/awk -F, '{print $3 $4 $5}' | /usr/bin/cut -f 7 -d " ")

    # average >= core で色を変える
    TMUX_COL_1M=`sub_color_select $UPTIME_1M`
    TMUX_COL_5M=`sub_color_select $UPTIME_5M`
    TMUX_COL_15M=`sub_color_select $UPTIME_15M`

    # RET
    RETURN_STRINGS="${TMUX_COL_1M}${UPTIME_1M}(1) ${TMUX_COL_5M}${UPTIME_5M}(5) ${TMUX_COL_15M}${UPTIME_15M}(15)"
    echo "${RETURN_STRINGS}"
    return 0
}

RET=0

## メインルーチン
get_load_average
RET=$?

## 終了コード
exit $RET
