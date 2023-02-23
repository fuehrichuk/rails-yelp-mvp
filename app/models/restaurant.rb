class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  enum category: [:chinese, :italian, :japanese, :french, :belgian]
end
