#!/bin/sh

## 定数変数
TMUX_COLOR_NORMAL='#[fg=colour7]'
TMUX_COLOR_SWAP='#[fg=colour1]'

## コマンドチェック
if ! [ -f /usr/bin/free ] ; then
  echo "free is not found!"
  exit 1
fi

## メモリ使用率(%)計算。精度は少数第1位まで
calc_mem_usage() {
    # 数値取得
    COM_FREE=$(/usr/bin/free)

    MEM_USED=$(echo "$COM_FREE" | /usr/bin/awk '/-\/+/ {print $3}')
    MEM_TOTAL=$(echo "$COM_FREE" | /usr/bin/awk '/Mem:/ {print $2}')
    SWAP_USED=$(echo "$COM_FREE" | /usr/bin/awk '/Swap:/ {print $3}')
    SWAP_TOTAL=$(echo "$COM_FREE" | /usr/bin/awk '/Swap:/ {print $2}')

    # 使用中メモリ(%)
    MEM_USED_PERCENT=$(echo "$((($MEM_USED) * 1000 / ($MEM_TOTAL)))" | /bin/sed -e 's/\(.*\)\([0-9]\)/\1.\2/' -e 's/^\./0./')

    # 使用中スワップ(%)
    SWAP_USED_PERCENT=$(echo "$((($SWAP_USED) * 1000 / ($SWAP_TOTAL)))" | /bin/sed -e 's/\(.*\)\([0-9]\)/\1.\2/' -e 's/^\./0./')

    # スワップの有無で色を変える
    if [ 0 -eq $SWAP_USED ] ; then
        TMUX_COLOR=$TMUX_COLOR_NORMAL
      else
        TMUX_COLOR=$TMUX_COLOR_SWAP
    fi

    #RET
    RETURN_STRINGS="${TMUX_COLOR}M:${MEM_USED_PERCENT}% S:${SWAP_USED_PERCENT}%"
    echo "${RETURN_STRINGS}"
    return 0
}

RET=0

## メインルーチン
calc_mem_usage
RET=$?

## 終了コード
exit $RET
