class Gallery < ActiveRecord::Base
  has_many :photos

  belongs_to :design
  belongs_to :post
  belongs_to :program
end
