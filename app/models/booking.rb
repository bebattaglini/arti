class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :artist
  belongs_to :category
  enum status: [:pending, :accepted, :rejected, :archived]

  validates :price, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :artist, presence: true
  validates :user, presence: true
  validates :location, presence: true
end
