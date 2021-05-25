class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :user
  has_one_attached :image

  belongs_to :category
  belongs_to :item_status
  belongs_to :shopping_charge
  belongs_to :shopping_area
  belongs_to :estimated_shopping_date
  
  with_options presence: true do
    validates :image
    validates :item_name
    validates :item_description
    validates :selling_price, numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: "is invalid"}, format: { with: /\A[0-9]+\z/ }
  end

  with_options numericality: { other_than: 1 } do
  validates :category_id
  validates :item_status_id
  validates :shopping_charge_id
  validates :shopping_area_id
  validates :estimated_shopping_date_id
  end
end


# numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: "is invalid"}}