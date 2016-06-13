class Design < ActiveRecord::Base
  has_one :gallery

  def gallery_attributes=(gallery_attributes)
    self.gallery = Gallery.new(name: gallery_attributes[:name])
  end
end
