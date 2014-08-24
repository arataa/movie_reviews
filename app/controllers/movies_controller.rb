class MoviesController < ApplicationController
  def index
    @movies = Movie.where(:mid_pia.ne => nil).order_by(open_date: :desc).page params[:page]
  end

  def show
    @movie = Movie.find(params[:id])
    m = MovieMerger.where(mid_pia: @movie.mid_pia).first
    @tomato = Movie.find_by(mid_tomato: m.mid_tomato) if m
  end
end
