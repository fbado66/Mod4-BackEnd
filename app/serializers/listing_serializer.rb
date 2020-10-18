class ListingSerializer < ActiveModel::Serializer
  attributes :title, :catch_phrase, :details, :image_1_url, :image_2_url, :image_3_url, :image_4_url, :image_5_url, :price, :description, :host_info
  has_many :reviews
end
