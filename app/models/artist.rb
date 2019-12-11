class Artist < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders
  has_many :products, dependent: :destroy
  has_many :artist_categories, dependent: :destroy
  has_many :bookings
  has_many :conversations
  has_many :messages, through: :conversations
  has_many :reviews, through: :products
  has_many :reviews, through: :bookings

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, presence: true

  def full_name
    first_name + " " + last_name
  end
end
