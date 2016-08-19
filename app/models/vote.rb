class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :book
  
  validates :rating, inclusion: (1..5)
end
