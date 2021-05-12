## テーブル設計

## users

| Column             | Type         | Options      |
| --------           | ------       | -----------  |
| nickname           | string       | null: false  |
| email              | string       | unique: true |
| encrypted_password | string       | null: false  |
| birthday           | date         | null: false  |
| last_name          | string       | null: false  |
| first_name         | string       | null: false  |
| last_name_kana     | string       | null: false  |
| first_name_kana    | string       | null: false  |


## Association

- has_many :items
- has_many :purchases


## items

| Column                     | Type         | Options      |
| --------                   | ------       | -----------  |
| item_name                  | string       | null: false  |
| item_description           | text         | null: false  |
<!-- | seller                     | string       | null: false  | -->
| category_id                | integer       | null: false  |
| item_status_id             | integer       | null: false  |
| shopping_charge_id         | integer       | null: false  |
| shipping_area_id           | integer       | null: false  | 
| estimated_shipping_date_id | integer       | null: false  | 
| selling price              | integer       | null: false  |
 
## Association

- belongs_to :user
- has_one :purchase


## purchases

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| item   | references | null: false, foreign_key: true |

## Association

- belongs_to :item
- has_one :shipping


## shippings

| Column             | Type         | Options      |
| --------           | ------       | -----------  |
| postcode           | string       | null: false  |
| prefecture_id      | integer      | null: false  |
| city               | string       | null: false  |
| block              | string       | null: false  |
| building           | string       | null: false  |
| phone_number       | string       | null: false  |


## Association

- belongs_to purchase

