class BooksController < ApplicationController
	before_action :authenticate_user!, except: [:show, :index]
	before_action :set_book, only: [:show, :update, :edit, :destroy]

	def index
		@books = Book.all
		@random_books = Book.random_books
	end
	
	def mine
		@books = current_user.books
	end

	def new
		@book = Book.new
		load_form_data

	end
	def show
		if current_user
			if @book.votes.where(user_id:current_user.id ).any?
				@vote = @book.votes.where(user_id: current_user.id).first
			else
				@vote = @book.votes.build
			end
		end
	end
	def edit
		load_form_data
	end
	def update
		@book = Book.find(params[:id])

		if @book.update(book_params)
			redirect_to book_path(@book)
		else
			load_form_data
			render :edit
		end

	end
	
	def create
		@book = current_user.books.new(book_params)

		if @book.save
			flash[:success] = 'İşlem başarıyla tamalandı.'
			redirect_to book_path(@book)
		else
			load_form_data
			render :new

		end
	end


	def destroy
		@book.destroy
		redirect_to books_path, notice: "The book is deleted! "
	end


	private


	def book_params
		params.permit(:name, :description, :published_at, :publisher, :category_id, tag_ids: [])
	end 

	def set_book
		@book = Book.find(params[:id])
	end

	def load_form_data
		@categories = Category.all.collect{|c| [c.name, c.id]}
		@tags = Tag.all
	end

end
