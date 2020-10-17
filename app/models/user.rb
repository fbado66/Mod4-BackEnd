class User < ApplicationRecord
    has_many: reservations
    has_many: listings, through: :reservations
    has_many: reviews 
end
