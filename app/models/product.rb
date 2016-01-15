class Product < ActiveRecord::Base

  include RankedModel
  ranks :rank

  attr_accessible :description, :name, :price, :rank, :weight, :enabled, :carrousel, :image

  mount_uploader :image, ImageUploader

  # SCOPES
  ########

  scope :enabled, where(enabled: true)
  scope :carrousel, where(carrousel: true).order("rank ASC")

  # RELATIONS
  ###########

  has_many :taggables_tags, :as => :taggable, :dependent => :destroy
  has_many :tags, :through => :taggables_tags

  def self.search(keyword)
    where('LOWER(name) LIKE :keyword OR LOWER(description) LIKE :keyword', keyword: "%#{keyword.downcase}%")
  end

end
