class BooksController < ApplicationController
	before_action :authenticate_user!, except: [:show, :index]
	before_action :authorize_user!, only: [:edit, :update, :destroy]
	def index
		@books = Book.all
	end
	def new

	end
	def show

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
