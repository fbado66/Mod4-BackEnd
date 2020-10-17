class Listing < ApplicationRecord
    has_many :reservations
    has_many :listing_categories
    has_many :categories, through: :listing_categories
    has_many :reviews
end
