class ListingsController < ApplicationController

    def index 
        @listings = Listing.all 
        render json: @listings
    end 

    def show 
        @listing = Listing.find(params[:id])
        render json: @listing
    end 

    def create
        @listing = Listing.create!(listing_params)
        render json: @lising
    end 

    private 
    def listing_params
        params.permit(:title, :catch_phrase, :details, :image_1_url, :image_2_url, :image_3_url, :image_4_url, :image_5_url, :price, :description, :host_info)
    end 
end
