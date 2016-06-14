class Program < ActiveRecord::Base
  has_one :gallery

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

end
