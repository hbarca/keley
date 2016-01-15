class TaggablesTag < ActiveRecord::Base

  attr_accessible :taggable

  # RELATIONS
  ###########

  belongs_to :tag
  belongs_to :taggable, :polymorphic => true
end
