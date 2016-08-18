class VotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_book
  def create
  end

  def destroy
  end

  private

    def set_book
        @book = Book.find(params[:book_id])
     end
end
