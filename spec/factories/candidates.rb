FactoryBot.define do
  factory :candidate do
    name Faker::Name.name
    job_role
  end
end
