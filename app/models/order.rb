class Order < ApplicationRecord
  belongs_to :user
  belongs_to :artist
  belongs_to :product

  validates :user, presence: true
  validates :artist, presence: true
  validates :price, presence: true
  validates :description, presence: true
  enum status: [:pending, :accepted, :rejected, :archived]
end
