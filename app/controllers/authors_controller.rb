class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :update, :edit, :destroy]

  def new
    @author=Author.new

  end
  def index
    @author=Author.all
  end
  def show
    set_author
  end
  def edit
    set_author
  end
  def update
   set_author
    if @author.update(author_params)
     redirect_to author_path(@author), notice: "Author Updated"
    end

  end
  def create
    @author =Authors.new(author_params)
    if @author.save
      flash[:success]='İşlem başarıyla tamamlandı!'
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def destroy
    set_author
    @author.destroy
    redirect_to author_path, notice: "Author was deleted"

  end


  private
  def set_author
    @author=Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:name, :surname, :profile)
  end
  def set_author
    @author = Author.find(params[:id])
  end

end
