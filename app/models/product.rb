class Product < ActiveRecord::Base

  attr_accessible :description, :name, :price, :rank, :weight, :enabled, :carrousel, :image

  mount_uploader :image, ImageUploader

  # SCOPES
  ########

  scope :enabled, where(enabled: true)
  scope :carrousel, where(carrousel: true)

  # RELATIONS
  ###########

  has_many :taggables_tags, :as => :taggable, :dependent => :destroy
  has_many :tags, :through => :taggables_tags


end
