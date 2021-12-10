class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :clown
  validates :start_date, :end_date, presence: true

  after_initialize :set_defaults, unless: :persisted?
  validate :end_date_after_start_date

  private

  def set_defaults
    self.status ||= 'Current'
  end

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    errors.add(:end_date, "must be after the start date") if end_date < start_date
  end
end
