class MoviesController < ApplicationController
  def index
    @movies = Movie.where(:mid_pia.ne => nil).order_by(open_date: :desc).page params[:page]
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
