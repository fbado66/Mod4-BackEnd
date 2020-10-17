class CategoriesController < ApplicationController
    
    def create
        @category = Category.create!(category_params)
        render json: @category
    end 

    private

    def category_params
        params.permit(:name)
    end 
end
