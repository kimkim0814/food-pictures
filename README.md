food-pictures
====
自身で初めて作成を手掛けたアプリケーションです。スクール在学中に作成はしましたが、メンターの方に一切質問をせず自分全て調べて制作しました。
僕を含めた食べ物が好きな方のために作成しました。
<img width="1439" alt="スクリーンショット 2020-06-25 18 19 59" src="https://user-images.githubusercontent.com/54876760/85692799-a7c09f80-b710-11ea-84e3-f83e479d6a6e.png">



## 制作の背景
今現在のSNSは"何を"投稿するかではなく、"誰が"投稿するかによって
いいね数　メンションに大きな差が出ると感じあえてニックネームは表示させない設定にしました。
なおコメント機能では、会員番号1番さんなど　番号だけ表示されるようになっており、味や場所など情報を集めるために追加しています。

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
- jQuery

**インフラ**
- heroku
- AWS(S3)(herokuのみだと画像が消えてしまうので追加 2020-06-17)
## 機能一覧
  
 - いいね機能あり
  - ハートマークアイコンでいいねすることが可能(2020-6-17)
 - ページネーション機能
      - kaminariを使用

- アカウント作成  
- ユーザーログイン機能  
   - ポートフォリオ閲覧用に簡単ログイン機能あり
   - 登録済メールアドレスとパスワードによるログイン方式
 - 投稿機能  
   - 画像投稿機能(carrierwaveを使用)
 -  コメント機能を追加(2020-6-11)
 -  検索機能を追加(2020-6-18)
 -  いいね順、古い順、新しい順のソート機能を追加(2020-7-3)


## 今後について
機能面として、いいねを多い順にソートする機能(2020-7-3実装)とGoogle map APIを使用して位置情報を付随させる機能を付けたいと考えている。

