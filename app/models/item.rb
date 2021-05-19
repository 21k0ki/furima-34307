class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  with_options presence: true do
    validates :item_name
    validates :item_description
    validates :category_id
    validates :item_status_id
    validates :shopping_charge_id
    validates :shopping_area_id
    validates :estimated_shopping_date_id
    validates :selling_price
end
