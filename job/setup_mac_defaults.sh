#!/bin/zsh

set -eu

# Basic --------------------

## ブート時のサウンドの無効化
sudo nvram SystemAudioVolume=" "

## スクリーンショットの保存先をデスクトップに変更
defaults write com.apple.screencapture location ~/Desktop/

# Finder --------------------

## デフォルトで隠しファイルを表示する
defaults write com.apple.finder AppleShowAllFiles -bool true

## 全ての拡張子のファイルを表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

## ステータスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true

## パスバーを表示
defaults write com.apple.finder ShowPathbar -bool true

## 名前で並べ替えを選択時にディレクトリを前に置くようにする
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

## 検索時にデフォルトでカレントディレクトリを検索
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

## USBやネットワークストレージに.DS_Store ファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

## ボリュームマウント時に自動的にFinder を表示
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

## ~/Library フォルダを表示
chflags nohidden ~/Library

# App Store --------------------

## 自動更新チェックを有効にする
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

## アプリケーションのアップデートをバックグラウンドでダウンロードする
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

## アプリケーションの自動更新を有効化
defaults write com.apple.commerce AutoUpdate -bool true