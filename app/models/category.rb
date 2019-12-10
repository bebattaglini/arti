class Category < ApplicationRecord
  has_many :artist_categories
  has_many :products
end
