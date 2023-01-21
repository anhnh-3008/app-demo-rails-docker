# frozen_string_literal: true

# Class User
class User < ApplicationRecord
  has_many :posts, dependent: :destroy

  validates :name, presence: true
end
