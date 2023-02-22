class Restaurant < ApplicationRecord
  has_many :views, :dependent, :destroy
  enum category: [:chinese, :italian, :japanese, :french, :belgian]
end
