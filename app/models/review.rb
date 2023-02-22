class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, only_integer: true
  validates :rating, length: { in: 1..5 }
end
