class Post < ActiveRecord::Base
  include FriendlyId
  friendly_id :headline, use: :slugged
  has_many :post_images

  has_one :gallery
  belongs_to :icon

  accepts_nested_attributes_for :icon

  def icon_attributes=(icon_attributes)
    self.icon = Icon.find_or_create_by(name: icon_attributes[:name])
    self.icon.update(icon_attributes)
  end

end
