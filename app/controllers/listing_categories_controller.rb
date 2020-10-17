class ListingCategoriesController < ApplicationController

    def create
        @listing_category = LisitngCategory.create!(listing_category_params)
        render json: @listing_category
    end 

    private
    def listing_category_params
        params.permit(:listing_id, :category_id)
    end 
end
