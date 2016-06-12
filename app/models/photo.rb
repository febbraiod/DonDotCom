class Photo < ActiveRecord::Base
  has_attached_file :pic, styles: { thumb_vert: "111x165#", thumb_horiz: "165x111#", medium_vert: "222x330#", medium_horiz: "330x220#", large_vert: "592x880", large_horiz: "880x592"}
  validates_attachment_content_type :pic, content_type: /\Aimage\/.*\Z/
end

