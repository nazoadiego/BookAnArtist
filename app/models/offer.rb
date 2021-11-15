class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :artist_name, presence: true
end
