class Estimated_shopping_date < ActiveHash::Base
  self.data = [
    { id: 1, name: '1~2日で発送' },
    { id: 2, name: '2~3日で発送' },
    { id: 2, name: '3~7日で発送' }
  ]

  include ActiveHash::Associations
  has_many :items
end
