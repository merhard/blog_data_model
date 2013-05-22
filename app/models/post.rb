class Post < ActiveRecord::Base
  has_and_belong_to_many :categories
  has_many :comments
  belongs_to :author

  validates_presence_of :title
  validates_presence_of :content
  validates_uniqueness_of :title
  validates_uniqueness_of :content

  attr_accessible :content, :title
end
