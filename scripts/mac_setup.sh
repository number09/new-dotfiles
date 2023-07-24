#!/bin/bash


# Dark mode
defaults write -g AppleInterfaceStyle -string "Dark"

# Bluetooth ヘッドフォン・ヘッドセットの音質を向上させる
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40
# クラッシュレポートを無効化する
defaults write com.apple.CrashReporter DialogType -string "none"
# Dashboard を無効化する
defaults write com.apple.dashboard mcx-disabled -bool true
#.DS_Store ファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

## Dock
# Dock を自動的に隠す
defaults write com.apple.dock autohide -bool true
# Dock に標準で入っている全てのアプリを消す、Finder とごみ箱は消えない
defaults write com.apple.dock persistent-apps -array
# Dock アイコンサイズの設定
defaults write com.apple.dock tilesize -int 25

## Finder
# 不可視ファイルを表示
defaults write com.apple.finder AppleShowAllFiles YES
# 検索時にデフォルトでカレントディレクトリを検索する
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# Finder のタイトルバーにフルパスを表示する
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
# 名前で並べ替えを選択時にディレクトリを前に置くようにする
defaults write com.apple.finder _FXSortFoldersFirst -bool true
# Finder を終了させる項目を追加する
defaults write com.apple.Finder QuitMenuItem -bool true
# パスバーを表示する
defaults write com.apple.finder ShowPathbar -bool true
# ステータスバーを表示する
defaults write com.apple.finder ShowStatusBar -bool true
# タブバーを表示
defaults write com.apple.finder ShowTabView -bool true


# 未確認のアプリケーションを実行する際のダイアログを無効にする
defaults write com.apple.LaunchServices LSQuarantine -bool false
# スクリーンキャプチャの影をなくす
defaults write com.apple.screencapture disable-shadow -bool true
# スクリーンショットの保存形式を PNG にする
defaults write com.apple.screencapture type -string "png"

# iPhone接続時 写真を起動させない
defaults write com.apple.ImageCapture disableHotPlug -bool YES

# バッテリーの充電残量を表示
defaults write com.apple.menuextra.battery ShowPercent -string "YES"
# 未確認のアプリケーションを実行する際のダイアログを無効にする
defaults write com.apple.LaunchServices LSQuarantine -bool false
# UTF-8 のみを使用する
defaults write com.apple.terminal StringEncodings -array 4
# 日付と時刻のフォーマット（24時間表示、日付・曜日を表示）
defaults write com.apple.menuextra.clock DateFormat -string "M\u6708d\u65e5(EEE)  H:mm"

# タップしてクリック
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write -g com.apple.mouse.tapBehavior -bool true

# 設定後Finder と Dock を再起動
killall Finder
killall Dock


