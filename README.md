# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# アプリの説明
## このアプリの概要
保育園のための掲示板アプリです。
利用者との間の情報共有のために作りました。

## アプリの説明
保育園で今日起こったことや、お知らせなどを利用者全体に共有するために掲示板アプリを作りました。
他にも、保育園で作っている給食の紹介や、保育園近隣の病院の情報、感染症の情報を掲示しています。
職員専用のアカウントでしか、投稿、編集、削除はできない様になっています。また、ログインしないと投稿は見られないようになっています。

## アプリの機能
### user登録機能
user新規登録、ログイン、ログアウト機能がついています。
### 投稿機能
職員専用のアカウントのみ、「今日の保育園」「給食通信」「保健通信」の各ページで投稿ができます。
### 投稿編集・削除機能
職員専用のアカウントのみ、各ページで投稿の編集・削除ができます。

## アプリを作った理由
私の前職は保育士だったのですが、そこでの経験から、このような掲示板アプリがあったらいいなという考えがあったので作りました。
前職の職場では、連絡などは全て紙媒体だったので、利用者全員に情報が行き渡っているのかがよく分からなかったり、紙媒体であったためにその書類を紛失してしまう利用者の方もいました。
もし、掲示板アプリを作れば、そのアプリを使っている人全員には確実に情報が行き渡るし、紛失することもありません。また、掲示板アプリを使えば、震災時も保護者の方に今の保育園の状況を伝える手段が増えます。アプリにレシピや病院への地図を載せれば、利用者の方もわざわざ紙を出さずに、スマートフォンで確認でき、活用できるのではないかと考えたので、このアプリケーションを作りました。

## こだわったところ
ステータス更新にこだわりました。
例えば、職員専用のアカウントでなければ、投稿や、編集・削除ができなかったり、ログインしないと投稿が見られないようにしたところです。
職員以外が投稿などをできるようになってしまうと、投稿する情報に信憑性がなくなってしまうと思ったので、このようにしました。
また、ヘッダーのボタンもログイン時はログアウトボタンのみを表示し、ログアウト時はログインボタンと新規登録ボタンを表示するようにしました。


## GitHubのリポジトリのurl
https://github.com/sasamoto-miyu/hoiku-communication

## 接続先
本番環境にデプロイしました。
url:  http://18.176.158.95/

ベーシック認証もついています。
user_nameは66-i
passは0908
です。

# DB設計
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|encrypted_password|string|null: false|

## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
|text|string||
|title|string||
|image|text||

## recipesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
|title|string||
|recipe|string||
|image|text||
|food|string||

## medicalsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
|title|string||
|text|string||
|image|text||
|map|text||
|site_url|text||


