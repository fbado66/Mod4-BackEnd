class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  # has_many :listing_categories
  has_many :listings, through: :listing_categories


end
