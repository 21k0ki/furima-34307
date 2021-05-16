FactoryBot.define do
  factory :user do
    nickname               {Faker::Name.initials(number: 2)}
    email                  {Faker::Internet.free_email}
    password               {Faker::Internet.password(min_length: 6)}
    password_confirmation  {password}
    last_name              {'aaaa'}
    first_name             {'aaa'}
    last_name_kana         {'アアアア'}
    first_name_kana        {'アアア'}
    birthday               {'2000-01-01'}
  end
end