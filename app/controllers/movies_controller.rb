class MoviesController < ApplicationController
  def calendar
  end

  def create
    Movie.create(params.require(:movie).permit(:title, :reserved_date))
  end

  def destroy
    Movie.find(params[:id]).destroy
  end
end
