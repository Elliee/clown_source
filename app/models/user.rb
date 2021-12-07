class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :clowns, dependent: :destroy
  has_one_attached :photo, dependent: :destroy

  def profile_picture
    if photo.attached?
      photo.key
    else
      "avatar-unknown.png"
    end
  end
end
