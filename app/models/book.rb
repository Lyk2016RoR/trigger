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
	

end
