class BooksController < ApplicationController
	before_action :authenticate_user!, except: [:show, :index]
	
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
		@book = Book.find(params[:id])
	end
	def update
		@book = Book.find(params[:id])

		if @book.update(book_params)
			redirect_to book_path(@book)
		else
			render :edit
		end

	end
	
	def create
		@book = Book.find(params[:id])

		if @book.save
			redirect_to book_path(@book)
		end
	end


	def destroy

	end


	private


	def book_params
		params.permit(:name, :description, :published_at, :publisher)
	end 

end
