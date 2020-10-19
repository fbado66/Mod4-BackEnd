class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :image_url
  # has_many :listing_categories
  has_many :listings, through: :listing_categories


end
