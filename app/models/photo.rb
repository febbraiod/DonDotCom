class Photo < ActiveRecord::Base
  has_attached_file :pic, styles: { thumb_vert: "165x111", thumb_horiz: "111x165", medium_vert: "330x222", medium_horiz: "222x330", large_vert: "880x592", large_horiz: "592x880"}
  validates_attachment_content_type :pic, content_type: /\Aimage\/.*\Z/
end

