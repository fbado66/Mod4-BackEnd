class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :username, :listings
  has_many :reservations
  has_many :listings
  has_many :reviews


  def listings 
    Listing.all 
  end

end
