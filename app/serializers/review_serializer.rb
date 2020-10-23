class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :nickname, :content, :likes
 
end
