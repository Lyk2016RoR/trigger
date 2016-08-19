class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :update, :edit, :destroy]

  def new
    @author=Author.new

  end
  def index
    @authors=Author.all
  end
  def show
    select_author
  end
  def edit
    select_author
  end


  
  def update

  end
  def create
    @author =Author.new(author_params)
    if @author.save
      flash[:success]='İşlem başarıyla tamamlandı!'
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def destroy
    @author.destroy
    redirect_to author_path, notice: "Author was deleted"

  end


  private
  def select_author
    @author=Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:name, :surname, :profile)
  end

end
