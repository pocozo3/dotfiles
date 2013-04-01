################################################################################
#
# .zlogout 各環境依存設定
#     ~/.zlogout
#     zsh ログアウト時の設定
#
################################################################################

# 共通の設定を読み込む
source ~/.zsh.d/zlogout

# 環境依存のカスタマイズ
case ${OSTYPE} in
    cygwin*) # Windows用設定
        source ~/.zsh.d/zlogout.win
        ;;
    linux*) # Linux(Debian)用設定
        source ~/.zsh.d/zlogout.linux
        ;;
esac
