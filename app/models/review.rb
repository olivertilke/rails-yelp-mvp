class Review < ApplicationRecord
  belongs_to :restaurant
  # val content and rating
  validates :content, :rating, presence: true
  # val rating needs to be integer and between 0-5
  validates :rating, numericality: { only_integer: true, in: 0..5 }
end
