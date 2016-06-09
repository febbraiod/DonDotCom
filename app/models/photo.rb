class Photo < ActiveRecord::Base
  has_attached_file :pic, styles: { thumb_horiz: "165x111", thumb_vert: "111x165", medium_horiz: "330x222", medium_vert: "222x330", large_horiz: "880x592", large_vert: "592x880"}
  validates_attachment_content_type :pic, content_type: /\Aimage\/.*\Z/
end

