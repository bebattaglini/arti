class Product < ApplicationRecord
  belongs_to :category
  belongs_to :artist
  has_many :images

  validates :title, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :artist, presence: true
end
