FactoryBot.define do
  factory :item do
  name        {Faker::Name.initials(number: 40)}
  text        {Faker::Lorem.sentence}
  stock_id    { 2 }
  deployment  { '調味料・和菓子・乾物・健康' }
  arrival_day { 2021-01-01 }

  association :user

  after(:build) do |item|
    item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
  end

  end
end
