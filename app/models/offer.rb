class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  validates :artist_name, presence: true
  include PgSearch::Model
  pg_search_scope :search_by_artist_name_and_decription,
                  against: [ :artist_name, :description ],
                  using: {
                    tsearch: { prefix: true }
                  }
end
