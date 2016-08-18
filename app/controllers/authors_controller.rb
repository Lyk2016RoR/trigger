class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :update, :edit, :destroy]

  def new
    @author=Author.new

  end
  def index
    @author=Author.all
  end
  def show

  end
  def edit
    if @author.update(authors_params)
  redirect_to author_path(@author)
  else

    render :edit
  end


  end
  def update

  end
  def create
    @author =authors.new(author_params)
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
  def set_author
    @author=Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:name, :surname, :profile)
  end

end
