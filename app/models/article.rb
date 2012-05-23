class Article < ActiveRecord::Base
  validates_presence_of :title, :body
  attr_accessible :body, :title
end
