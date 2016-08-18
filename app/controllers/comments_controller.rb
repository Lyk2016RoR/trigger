class CommentsController < ApplicationController
     before_action :set_comment, only: [:show, :update, :edit, :destroy]

  def new
    @comment=Comment.new

  end
  def index
    @comment=Comment.all
  end
  def show

  end
  def edit
    if @comment.update(comments_params)
  redirect_to comment_path(@comment)
  else

    render :edit
  end


  end
  def update

  end
  def create
    @comment =comments.new(comment_params)
    if @comment.save
      flash[:success]='İşlem başarıyla tamamlandı!'
      redirect_to comment_path(@comment)
    else
      render :new
    end
  end

  def destroy
    @comment.destroy
    redirect_to comment_path, notice: "Comment was deleted"

  end


  private
  def set_comment
    @comment=Comment.find(params[:id])
  end
end
