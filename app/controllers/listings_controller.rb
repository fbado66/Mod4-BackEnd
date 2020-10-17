class ListingsController < ApplicationController

    def create
        @listing = Listing.create!(listing_params)
        render json: @lising
    end 

    private 
    def listing_params
        params.permit(:title, :catch_phrase, :details, :image_1_url, :image_2_url, :price, :description, :host_info)
    end 
end
