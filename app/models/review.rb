class Review < ApplicationRecord
  belongs_to :restaurants
  #allows us to do review.restaurant
end
