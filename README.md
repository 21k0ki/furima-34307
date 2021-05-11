## テーブル設計


| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |
| birthday | string | null: false |

## Association

- has_many :items
- has_many :purchases

