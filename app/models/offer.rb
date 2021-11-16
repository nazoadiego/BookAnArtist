class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos

  validates :artist_name, presence: true
end
