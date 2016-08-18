class Comment < ApplicationRecord
	 validates :body
	 belongs_to :book
     belongs_to :use
end
