class Clown < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :name, :description, :price, presence: true
end
