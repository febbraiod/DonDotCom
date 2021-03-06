class Design < ActiveRecord::Base
  has_one :gallery, :dependent => :destroy

  def gallery=(gallery_attributes)
    if self.gallery
      self.gallery.name = gallery_attributes[:name]
      self.gallery.save
    else
      self.build_gallery(name: gallery_attributes[:name])
      self.gallery.save
    end
  end

  def add_photos(photos)
    photos.sort_by {|p| p.original_filename}.each do |pic|
      self.gallery.photos << Photo.create(pic: pic)
    end
  end

  #for nav between designs

  def self.get_next(design)
     self.where("display_rank > ?", design.display_rank).order("display_rank").first
  end

  def self.get_prev(design)
     self.where("display_rank < ?", design.display_rank).order("display_rank DESC").first
  end

end
