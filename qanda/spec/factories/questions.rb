FactoryBot.define do
  factory :question do
    title { Faker::Lorem.question }
    content { Faker::Lorem.sentence }
  end
end
