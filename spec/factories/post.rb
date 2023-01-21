# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    title { FFaker::Book.title }
    content { FFaker::Lorem.paragraph }

    user
  end
end
