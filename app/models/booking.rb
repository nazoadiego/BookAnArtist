class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  validates :status, presence: true, inclusion: { in: %w[accepted rejected pending] }
  validates :start_time, :end_time, presence: true

  def self.categories
    %w[accepted rejected pending]
  end
end
