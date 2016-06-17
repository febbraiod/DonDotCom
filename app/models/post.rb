class Post < ActiveRecord::Base
  include FriendlyId
  friendly_id :headline, use: :slugged

  has_one :gallery
  belongs_to :icon

  def gallery_attributes=(gallery_attributes)
    if self.gallery
      self.gallery.name = gallery_attributes[:name]
      self.gallery.save
      binding.pry
    else
      self.gallery = Gallery.new(name: gallery_attributes[:name])
      self.gallery.save
      binding.pry
    end
  end

  def add_photos(photos)
    photos.sort_by {|p| p.original_filename}.each do |pic|
      self.gallery.photos << Photo.create(pic: pic)
    end
  end

  def icon_attributes=(icon_attributes)
    self.icon = Icon.new(name: icon_attributes["name"], icon: icon_attributes["icon"]) unless icon_attributes[:name] == ""
  end

end
