class ReviewsController < ApplicationController
    
    def index 
        @reviews = Review.all 
        render json: @reviews
    end 

    def create
        @review = Review.create!(review_params)
        render json: @review
    end
    
    private 
    def review_parmas
        params.permit(:listing_id, :user_id, :nickname, :content)
    end 
end
