class Dish < ApplicationRecord
  validates :name, length: {in: 1..255}
  validates :tip, presence: true
  validate :date_cannot_be_in_the_past
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user

  def date_cannot_be_in_the_past
    if date < Date.today
      errors.add(:date, "は未来の日にちを入力してください")
    end
  end
end
