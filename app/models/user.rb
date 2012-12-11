class User < ActiveRecord::Base
  validates_presence_of :author_name, :content   
  belongs_to :articles
end
