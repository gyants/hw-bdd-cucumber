class ReviewsController < ApplicationController
    before_action :set_movie
    before_action :authenticate_moviegoer!, except: [:index, :show]
  
    def new
      @review = @movie.reviews.build
    end
  
    def create
      @review = @movie.reviews.build(review_params)
      @review.moviegoer = current_moviegoer
  
      if @review.save
        flash[:notice] = "Review successfully created!"
        redirect_to movie_path(@movie)
      else
        flash[:alert] = "There was an error creating the review."
        render :new
      end
    end
  
    private
  
    def set_movie
      @movie = Movie.find(params[:movie_id])
    end
  
    def review_params
      params.require(:review).permit(:content, :rating)
    end
end
  