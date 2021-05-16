FactoryBot.define do
  factory :user do
    nickname               {'test'}
    email                  {'test@example'}
    password               {'aa000000'}
    password_confirmation  {password}
    last_name              {'aaaa'}
    first_name             {'aaa'}
    last_name_kana         {'アアアア'}
    first_name_kana        {'アアア'}
    birthday               {'2000-01-01'}
  end
end