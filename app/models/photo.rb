class Photo < ActiveRecord::Base
  attr_accessible :description, :image, :name

  mount_uploader :image, ImageUploader

  belongs_to :album
end
