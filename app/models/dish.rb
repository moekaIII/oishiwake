class Dish < ApplicationRecord
  validates :name, length: {in: 1..255}
  validates :tip, presence: true
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
end
