FactoryBot.define do
  factory :purchase_shipping do
    token           {"aaaaa"}
    postal_code     {"123-4567"}
    prefecture_id   {4}
    city            {"愛知県"}
    house_number    {"1-1"}
    building_name   {"建物名"}
    phone_number    {"08012345678"}
  end
end
