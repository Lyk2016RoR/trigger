class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :rating, inclusion: (1..5)
  validates :user_id, uniqueness: {scope: :book_id}
end
