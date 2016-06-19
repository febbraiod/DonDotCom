class Gallery < ActiveRecord::Base
  has_many :photos, :dependent => :destroy

  belongs_to :design
  belongs_to :post
  belongs_to :program
end
