FactoryBot.define do
  factory :item do
    item_name                   {Faker::Lorem.sentence}
    item_description            {Faker::Lorem.sentence}
    category_id                 {2}
    item_status_id              {2}
    shopping_charge_id          {2}
    shopping_area_id            {2}
    estimated_shopping_date_id  {2}
    selling_price               {11111}
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
