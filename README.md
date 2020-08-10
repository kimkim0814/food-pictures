food-pictures
====
自身で初めて作成を手掛けたアプリケーションです。
僕を含めた食べ物が好きな方のために作成しました。
![スクリーンショット 2020-07-26 20 04 04](https://user-images.githubusercontent.com/54876760/88477487-57d93080-cf7b-11ea-8d92-c702a4fa3e8f.png)
投稿画面
<img width="1004" alt="スクリーンショット 2020-07-22 18 13 13" src="https://user-images.githubusercontent.com/54876760/88158519-1da02400-cc47-11ea-9d57-81743da48a00.png">




## 制作の背景
今現在のSNSは"何を"投稿するかではなく、"誰が"投稿するかによって
いいね数　メンションに大きな差が出ると感じあえてニックネームは表示させない設定にしました。
なおコメント機能では、会員番号1番さんなど　番号だけ表示されるようになっており、味や場所など情報を集めるために追加しています。

## 本番環境URL
https://food-pictures.herokuapp.com/
閲覧の際は、通常のユーザー登録・ログイン機能によるご確認のほか、ログインページの「簡単ログイン」ボタンから、テストユーザーアカウントによるご確認もご利用いただけます。

## 使用技術
**バックエンド**
- Ruby 2.7.1
- Ruby on Rails 5.2.4.3
- MySQL 5.6.47

**フロントエンド**
- html
- sass
- jQuery

**インフラ**
- heroku
- AWS(S3)(herokuのみだと画像が消えてしまうので追加 2020-06-17)
- Rspec (2020-07-24)
- Docker(2020-08-11)
## 機能一覧
  
 - いいね機能あり
   - ハートマークアイコンでいいねすることが可能(2020-6-17)
   - トップページでいいねの数が確認可能(2020-7-15)
 - ページネーション機能
      - kaminariを使用

- アカウント作成  
- ユーザーログイン機能  
   - ポートフォリオ閲覧用に簡単ログイン機能あり
   - 登録済メールアドレスとパスワードによるログイン方式
 - 投稿機能  
   - 画像投稿機能(carrierwaveを使用)
 - コメント機能を追加(2020-6-11)
   - コメント削除機能を追加(2020-7-31)
 -  検索機能を追加(2020-6-18)
 -  いいね順、古い順、新しい順のソート機能を追加(2020-7-3)
 - カテゴリ機能の実装(2020-7-22)

## ER図
![erd](https://user-images.githubusercontent.com/54876760/88673809-01f3bc80-d124-11ea-834e-fc4a59b97891.png)


## 今後について
機能面として、どの食べ物が人気なのかわかりやすくするためいいねを多い順にソートする機能(2020-7-3実装)と画像が消えてしまうのでストレージにAWS S3（2020-6-17実装）を追加を、投稿ごとにgoogle apiを紐づける機能を導入したいと考えている。



