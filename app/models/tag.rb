class Tag < ActiveRecord::Base

  attr_accessible :name

  # RELATIONS
  ###########

  has_many :taggables_tags, :dependent => :destroy

end
