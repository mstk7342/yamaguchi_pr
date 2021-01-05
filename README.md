# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :tweets
- has_many :comments

## tweets テーブル

| Column            | Type    | Options                        |
| name              | string  | null: false                    |
| prefectures_id    | integer | null: false                    |
| category_id       | string  | null: false                    |
| description       | text    | null: false                    |
| user_id           | integer | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column    | Type    | Options                        |
| --------- | ------- | ------------------------------ |
| user_id   | integer | null: false, foreign_key: true |
| text      | text    | null: false                    |
| tweet_id  | integer | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :text
