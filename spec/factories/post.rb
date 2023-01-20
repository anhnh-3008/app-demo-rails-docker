FactoryBot.define do
  factory :post do
    title { FFaker::Book.title }
    content { FFaker::Lorem.paragraph }

    user
  end
end
