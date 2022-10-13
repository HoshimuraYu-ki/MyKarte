FactoryBot.define do
  factory :user do
    name                  {"テスト太郎"}
    email                 {Faker::Internet.free_email}
    password              {Faker::Lorem.characters(number: 6, min_alpha: 1, min_numeric: 1) }
    password_confirmation {password}
    birthday              {'1990-01-01'}
  end
end
