FactoryBot.define do
  factory :question do
    user
    title { Faker::Lorem.question }
    content { Faker::Lorem.sentence }
  end
end
