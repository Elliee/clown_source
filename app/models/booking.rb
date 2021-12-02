class Booking < ApplicationRecord
  belongs_to :users
  belongs_to :clowns
  validates :start_date, :end_date, presence: true
end
