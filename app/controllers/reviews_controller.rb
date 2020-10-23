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

    def destroy 
        @review = Review.find(params[:id])
        @review.destroy
        render json: Review.all 
    end 
    
    private 
    def review_params
        params.permit(:listing_id, :nickname, :content)
    end 
end
