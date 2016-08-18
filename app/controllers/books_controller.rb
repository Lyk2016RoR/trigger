class BooksController < ApplicationController
	def index
		@books = Book.all
	end
	def new
		@book = Book.new

	end
	def show
		@book = Book.find(params[:id])
	end
	def edit

	end
	def update

	end
	def create

	end
	def delete

	end
end
