class User < ApplicationRecord
  validates :name, length:{ maximum: 30 }
  validates :email, length:{ maximum: 255 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password, length:{ maximum: 255 }
  validates :place, length:{ in: 1..255 }
  validates :icon, presence: true
  before_validation { email.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  has_many :dishes
  has_many :favorites, dependent: :destroy
  has_many :images
  mount_uploader :icon, ImageUploader
  mount_uploader :image, ImageUploader
end
