class Post < ActiveRecord::Base
  has_and_belongs_to_many :tags
  has_many :comments
validates_presence_of:title, :body
def imagepath 
match = body.match(/img src="(.+)" border/)  if match 
end

end
