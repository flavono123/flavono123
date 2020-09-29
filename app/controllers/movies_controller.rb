class MoviesController < ApplicationController
  def calendar
  end

  def create
    movie_params = params.require(:movie).permit(:title, :reserved_date)
    @date = movie_params[:reserved_date]

    Movie.create(params.require(:movie).permit(:title, :reserved_date))

    @movies = Movie.where(reserved_date: @date)

    render 'reload' if @movies.count == 1
  end

  def destroy
    movie = Movie.find(params[:id])
    @date = movie.reserved_date
    
    movie.destroy

    @movies = Movie.where(reserved_date: @date)

    render 'reload' if @movies.count == 0
  end

  def reserved_date
    @date = params[:date].to_date
    @movies = Movie.where(reserved_date: @date)

    render layout: false
  end
end
