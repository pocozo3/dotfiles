################################################################################
#
# .zshenv 各環境依存設定
#     ~/.zshenv
#     対話的・非対話的実行時共通の設定
#
################################################################################

# 共通の設定を読み込む
source ~/.zsh.d/zshenv

# 環境依存のカスタマイズ
case ${OSTYPE} in
    cygwin*) # Windows用設定
        source ~/.zsh.d/zshenv.win
        ;;
    linux*) # Linux(Debian)用設定
        source ~/.zsh.d/zshenv.linux
        ;;
esac
