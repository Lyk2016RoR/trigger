# == Schema Information
#
# Table name: books
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :text
#  published_at :integer
#  publisher    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Book < ApplicationRecord
	validates :name, presence: true
	validates :description, presence: true

	belongs_to :category
	has_many :comments
	belongs_to :user, optional: true
	belongs_to :author
	has_many :votes
	has_many :voters, through: :votes, source: :user
	has_and_belongs_to_many :tags

	def average_rating
		rating = votes.average(:rating)
		rating ? rating.to_s : "0.0"
	end
	
	def self.random_ideas
		self.order("RANDOM()").all
	end

end
