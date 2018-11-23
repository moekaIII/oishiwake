class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :name, length:{ maximum: 30 }
  validates :place, length:{ in: 1..255 }
  validates :about_me, length:{ maximum: 140 }
  has_many :images, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :dishes
  mount_uploader :icon, ImageUploader
end
