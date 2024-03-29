class Category < ActiveRecord::Base
  has_and_belongs_to_many :posts

  validates_presence_of :name

  attr_accessible :name
end
