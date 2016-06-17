class Photo < ActiveRecord::Base
  has_attached_file :pic, styles: { thumb: "111x111#", medium_horiz: "330x220#", large_horiz: "880x592"}, :convert_options => { :all => "-quality 100" }
  validates_attachment_content_type :pic, content_type: /\Aimage\/.*\Z/
end

