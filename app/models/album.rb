class Album < ActiveRecord::Base
  attr_accessible :description, :name, :user_id, :visibility, :user

  belongs_to :user

  has_many :photos
end
