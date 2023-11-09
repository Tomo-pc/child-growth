# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| password           | string | null: false               |
| first_name         | string | null: false               |
| last_name          | string | null: false               |

### Association

- has_many :milks
- has_many :user_children


## children テーブル

| Column        | Type    | Options     |
| ------------- | ------- | ------------|
| nickname      | string  | null: false |
| first_name    | string  | null: false |
| last_name     | string  | null: false |
| sex_id        | integer | null: false |
| birthday      | date    | null: false |

### Association

- has_many :milks
- has_many :user_children
- belongs_to_active_hash :sex


## milks テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| condition_id  | integer    | null: false                    |
| amount_id     | integer    |                                |
| time          | time       | null: false                    |
| user          | references | null: false, foreign_key: true |
| child         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :child
- belongs_to_active_hash :condition
- belongs_to_active_hash :amount


## user_children テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| child  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :child