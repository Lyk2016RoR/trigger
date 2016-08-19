class Author < ApplicationRecord
  validates :name, presence: true
  validates :surname, presence: true
  validates :profile, presence: true

  has_and_belongs_to_many :books
end
