class Admin::GenresController < ApplicationController

  def new
    @genre = Genre.new
  end

  def create
    genre = Genre.new(genre_params)# ここでuninitialized constant Admin::GenresController::Genre エラーがでる
    genre.save
    redirect_to '/admin/genres'
  end

  def index
     #@genres = Genre.all  
  end

  def edit
  end

  def update
  end

  private # ストロングパラメータ

  def genre_params
    params.require(:genre).permit(:title)
  end
end
