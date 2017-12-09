FactoryBot.define do
  factory :admin do
    email Faker::Internet.email
    password Faker::Internet.password

    before(:create) do |admin|
      admin.email = Faker::Internet.email
    end
  end
end
