# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | -----------               |
| email              | string | null: false, unique: true |
| name               | string | null: false               |
| profile            | text   | null: false               |
| occupation         | text   | null: false               |
| position           | text   | null: false               |
<!-- has_many :rooms, through: :room_users 中間テーブル　
 ちなみに中間テーブルは多対多の時に必要 -->
### Association  
has_many :prototypes
has_many :comments

## prototypes テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| title        | string     | null: false                    |
| catch_copy   | text       | null: false                    |
| concept      | text       | null: false                    |
| user         | references | null: false, foreign_key: true |

### Association
belongs_to :user
has_many :comments

## comments テーブル

| Column    | Type       | Options                        |
| ------    | ---------- | ------------------------------ |
| content   | text       | null: false                    |
| prototype | references | null: false, foreign_key: true |
| user      | references | null: false, foreign_key: true |

### Association
belongs_to :user
belongs_to :prototype

