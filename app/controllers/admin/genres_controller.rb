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
    @genre = Genre.new
     #@genres = Genre.all
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
  end

  private # ストロングパラメータ

  def genre_params
    params.require(:genre).permit(:name)
  end
end
