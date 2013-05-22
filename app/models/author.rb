class Author < ActiveRecord::Base
  has_many :posts
  has_many :comments, :through => :posts

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_uniqueness_of :email
  validates_uniqueness_of :twitter

  attr_accessible :email, :first_name, :last_name, :twitter
end
