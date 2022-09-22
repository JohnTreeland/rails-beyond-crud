class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # can do restaurant.reviews
end
