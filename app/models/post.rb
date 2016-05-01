class Post < ActiveRecord::Base
  include FriendlyId
  friendly_id :headline, use: :slugged
  has_many :post_images
end
