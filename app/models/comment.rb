class Comment < ActiveRecord::Base
  attr_accessible :comment, :first_name, :last_name

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :comment
  validates_uniqueness_of :comment
end
