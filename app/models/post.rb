class Post < ActiveRecord::Base
  include FriendlyId
  friendly_id :headline, use: :slugged

  has_one :gallery
  belongs_to :icon

  accepts_nested_attributes_for :icon

  def gallery_attributes=(gallery_attributes)
    self.gallery = Gallery.new(name: gallery_attributes[:name])
  end

end
