# アプリケーション名
 Child Growth

# アプリケーション概要
このアプリケーションは、赤ちゃんがいつミルクを飲んだのか、いつ寝たのか起きたのかなどを記録するためのアプリケーションです。

## URL
### [Child Growth](https://child-growth.onrender.com/)

# テスト用アカウント
* Basic認証ID：Tomo<br>
* Basic認証パスワード：39942
* メールアドレス：aaa@aaa
* パスワード：aaaa0000

# 利用方法

## 新規登録
1. トウロク(ユーザー新規登録)ボタンを押す。
2. ユーザー情報と子供の情報を記入・選択し、<br>`トウロク`を押す。

## 記録
1. キロク(新規記録)ボタンを押す。
2. キロクフォームで、`何をしたか`、`量`(ミルクを選択した場合のみ)、`時間`、`画像`(任意だが選択しない場合はユーザー登録で選択した画像を表示)を入力し、<br>`キロク`を押す。

## マイページ
1. ログインしている場合、トップページに表示されているユーザー名部分のマイページボタンを押す。
2. マイページには、ユーザーが記録した際に選択した全ての画像を表示する。

# アプリケーションを作成した背景
自分自身子育てをしていて、いつオムツを変えたのか、またミルクをどのくらい飲んだのかなどが分からなくなる。そこで、子供の状態(いつ何をどのくらい)を記録でき、ついでに子供の画像もアップできるアプリケーションを開発することにした。

# 洗い出した要件
### [要件定義シート](https://docs.google.com/spreadsheets/d/1YvPzbekCrHAIExZTj1X-sR2fNhd-L_vA9eTj2pro5eI/edit#gid=982722306)

# 実装した機能についての画像やGIF
ユーザー新規登録画面
![新規登録画面](https://i.gyazo.com/f6fded679d55efb09426304edfee9b6a.gif)
記録画面
![記録画面](https://i.gyazo.com/8f6d08badb12f3286d9700b906d44102.png)
記録後トップページ
![記録後トップページ](https://i.gyazo.com/8088192b8cda2ee04c68de6082b68c9b.png)
マイページ
![マイページ](https://i.gyazo.com/eb04816514c993386ebe0d37e02a320a.png)

# 実装予定の機能
* ユーザーが投稿した画像の詳細でいいね機能を考案中...

# データベース設計
ER図
![ER図](https://i.gyazo.com/5f16596963722e5478efbed4213e59b2.png)

## テーブル設計

### users テーブル

| Column      | Type    | Options                   |
| ----------- | ------- | ------------------------- |
| nickname    | string  | null: false               |
| email       | string  | null: false, unique: true |
| password    | string  | null: false               |
| first_name  | string  | null: false               |
| last_name   | string  | null: false               |
| child_name  | string  | null: false               |
| first_name  | string  | null: false               |
| last_name   | string  | null: false               |
| sex_id      | integer | null: false               |
| birthday    | date    | null: false               |

#### Association

- has_many :milks
- belongs_to_active_hash :sex


### milks テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| condition_id  | integer    | null: false                    |
| amount_id     | integer    |                                |
| time          | time       | null: false                    |
| user          | references | null: false, foreign_key: true |

#### Association

- belongs_to :user
- belongs_to_active_hash :condition
- belongs_to_active_hash :amount

# 工夫したポイント
* 誕生日を入力することで、産まれてからの日数を表示することによって生後の日数が一目で分かる。
* 写真も一緒に投稿することによって、投稿した写真がユーザーマイページにて一覧表示され、投稿した写真が見返せる。