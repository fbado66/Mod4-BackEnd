class User < ApplicationRecord
    has_many :reservations
    has_many :listings, through: :reservations
    has_many :reviews 
    validates_uniqueness_of :username
    has_secure_password


end
