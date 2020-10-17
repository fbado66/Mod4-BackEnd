class ListingSerializer < ActiveModel::Serializer
  attributes :title, :catch_phrase, :details, :image_1_url, :image_2_url, :price, :description, :host_info
  has_many :reviews
end
