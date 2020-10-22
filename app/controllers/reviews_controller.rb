class ReviewsController < ApplicationController

    before_action :authorized, only: [:create]

    
    def index 
        @reviews = Review.all 
        render json: @reviews
    end 

    def create
        @review = @user.reviews.create!(review_params)
        render json: @review
    end
    
    private 
    def review_params
        params.permit(:listing_id, :nickname, :content)
    end 
end
