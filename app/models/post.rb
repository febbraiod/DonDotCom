class Post < ActiveRecord::Base
  include FriendlyId
  friendly_id :headline, use: :slugged
end
