class CommentsController < ApplicationController

 
  before_action :set_book
  before_action :set_comment, only: [:destroy]
 
  def create
    @comment = @book.comments.new(comment_params)
    

  def destroy
    @comment.destroy
    redirect_to @book, notice: "Comment was deleted"
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





end
