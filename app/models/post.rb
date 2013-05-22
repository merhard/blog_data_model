class Post < ActiveRecord::Base
  attr_accessible :content, :title

  validates_presence_of :title
  validates_presence_of :content
  validates_uniqueness_of :title
  validates_uniqueness_of :content
end
