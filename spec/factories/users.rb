FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.unique.email }
    password { '123456789' }
    role { nil }
    address { 'stockholm' }
  end
end
