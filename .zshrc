################################################################################
#
# .zshrc 各環境依存設定
#     ~/.zshrc
#     対話的起動時のみの設定
#
################################################################################

# 共通の設定を読み込む
source ~/.zsh.d/zshrc

# 環境依存のカスタマイズ
case ${OSTYPE} in
    cygwin*) # Windows用設定
        source ~/.zsh.d/zshrc.win
        ;;
    linux*) # Linux(Debian)用設定
        source ~/.zsh.d/zshrc.linux
        ;;
esac
