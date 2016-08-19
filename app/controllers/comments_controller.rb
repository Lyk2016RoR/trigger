class CommentsController < ApplicationController
     
  before_action :authenticate_user!
  before_action :set_book
  before_action :authorize_user!, only: [:destroy]
  before_action :set_comment, only:[:destroy]

  def create
    @comment = @book.comments.new(comment_params)

    if @comment.save

      redirect_to @book, notice: "Comment was saved"
    else
      redirect_to @book, notice: "Comment couldn't saved"
    end
  end

  def destroy
    set_comment
    @comment.destroy
    redirect_to @book, notice: "Comment is deleted."
  end

  private

  def set_comment 
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end

  def set_book
    @book = Book.find(params[:book_id])
  end

end