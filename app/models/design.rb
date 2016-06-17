class Design < ActiveRecord::Base
  has_one :gallery

  def gallery=(gallery_attributes)
    binding.pry
    if self.gallery
      binding.pry
      self.gallery.name = gallery_attributes[:name]
      binding.pry
      self.gallery.save
    else
      binding.pry
      self.build_gallery(name: gallery_attributes[:name])
      binding.pry
      self.gallery.save
    end
  end

  def add_photos(photos)
    binding.pry
    photos.sort_by {|p| p.original_filename}.each do |pic|
      self.gallery.photos << Photo.create(pic: pic)
    end
  end

end
