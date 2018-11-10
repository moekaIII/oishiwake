class Dish < ApplicationRecord
  validates :name, length: {in: 1..255}
  validates :time, length: {in: 1..255}
  validates :tip, presence: true
end
