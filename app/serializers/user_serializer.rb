class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :username
  has_many :reservations
  has_many :reviews
  # has_many :listings, through: :reservations

end
