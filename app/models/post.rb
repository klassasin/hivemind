class Post < ActiveRecord::Base
  # Make sure that there is a title and a body
  validates_presence_of :title, :body
end
