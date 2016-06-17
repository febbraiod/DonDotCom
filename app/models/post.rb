class Post < ActiveRecord::Base
  include FriendlyId
  friendly_id :headline, use: :slugged

  has_one :gallery
  belongs_to :icon

  def gallery_attributes=(gallery_attributes)
    if self.gallery
      self.gallery.name = gallery_attributes[:name]
      self.gallery.save
    else
      self.gallery = Gallery.new(name: gallery_attributes[:name])
      self.gallery.save
    end
  end

  def add_photos(photos)
    photos.sort_by {|p| p.original_filename}.each do |pic|
      self.gallery.photos << Photo.create(pic: pic)
    end
  end

  def icon_attributes=(icon_attributes)
    if icon_attributes["name"] != "" && !icon_attributes["icon"].nil?
      self.icon = Icon.find_or_create_by(name: icon_attributes["name"])
      if self.icon.icon.nil?
        self.icon.icon = icon_attributes["icon"]
      end
    end
  end

end
