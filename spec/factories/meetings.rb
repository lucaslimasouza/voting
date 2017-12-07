FactoryBot.define do
  factory :meeting do
    name Faker::Name.name
    admin
  end
end
