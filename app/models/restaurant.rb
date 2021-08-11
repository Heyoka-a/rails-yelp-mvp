class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :category, inclusion:  { in: %w(chinese italian japanese french belgian),
    message: "%{value} is not a valid size" }
  validates :phone_number, :address, :name, presence: true


end
