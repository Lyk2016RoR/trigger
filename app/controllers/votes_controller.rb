class VotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_book
  def create

    @vote = @book.votes.new
        @vote.rating = params[:vote][:rating]
        @vote.user = current_user

        if @vote.save
          redirect_to @book, notice: "Vote was saved."
        else
          redirect_to @book, notice: "Vote is not valid."
        end
  end

  def destroy
  end

  private

    def set_book
        @book = Book.find(params[:book_id])
     end
end
