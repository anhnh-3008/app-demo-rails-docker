# frozen_string_literal: true

# Class Post
class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { maximum: 125 }
  validates :content, length: { maximum: 500 }
end
