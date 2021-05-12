## テーブル設計

## users

| Column             | Type         | Options      |
| --------           | ------       | -----------  |
| nickname           | string       | null: false  |
| email              | string       | unique: true |
| encrypted_password | string       | null: false  |
| birthday           | string       | null: false  |
| real_name          | string       | null: false  |

## Association

- has_many :items
- has_many :purchases


## items

| Column                  | Type         | Options      |
| --------                | ------       | -----------  |
| item_name               | string       | null: false  |
| item_description        | text         | null: false  |
| seller                  | string       | null: false  |
| category                | string       | null: false  |
| item_status             | string       | null: false  |
| shopping_charge         | string       | null: false  |
| shipping_area           | string       | null: false  | 
| estimated_shipping_date | string       | null: false  | 
| selling price           | integer      | null: false  |

## Association

- belongs_to :user
- has_one :purchase


## purchases

| Column             | Type         | Options      |
| --------           | ------       | -----------  |
| buyer              | string       | null: false  |
| address            | string       | null: false  |

## Association

- belongs_to :item
- has_one :shipping


## shippings

| Column             | Type         | Options      |
| --------           | ------       | -----------  |
| address            | string       | null: false  |

## Association

- belongs_to purchase

