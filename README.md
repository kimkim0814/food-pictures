food-pictures
====
自身で初めて作成を手掛けたアプリケーションです。
僕を含めた食べ物が好きな方のために作成しました。

## 制作の背景
今現在のSNSは""何を""投稿するかではなく、""誰が""投稿するかによって
いいね数　メンションに大きな差が出ると感じあえてニックネームは表示させない設定にしました。

## 本番環境URL
https://food-pictures.herokuapp.com/
閲覧の際は、通常のユーザー登録・ログイン機能によるご確認のほか、ログインページの「簡単ログイン」ボタンから、テストユーザーアカウントによるご確認もご利用いただけます。

## 使用技術
**バックエンド**
- Ruby 2.5.1
- Ruby on Rails 5.2.4.3
- MySQL 5.6.47

**フロントエンド**
- html
- sass

**インフラ**
- heroku(deployに使用)
- AWS(S3)

## 機能一覧

-　アカウント作成
-　ユーザーログイン機能
ゲストログイン機能あり
- 投稿機能
画像投稿機能(carrierwaveを使用)
いいね機能あり
-ページネーション機能
   kaminariを使用


## 今後について
機能面として、いいねを多い順にソートする機能とGoogle map APIを使用して位置情報を付随させる機能を付けたいと考えている。

