class Icon < ActiveRecord::Base
  has_attached_file :icon, styles: { thumb: "40x40" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :icon, content_type: /\Aimage\/.*\Z/

  has_many :posts
end
