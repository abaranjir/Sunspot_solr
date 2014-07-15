class Article < ActiveRecord::Base
   attr_accessible :name, :content, :published_at
   has_many :comments
   
   searchable do
     text :content
   end
 
   def publish_month
     published_at.strftime("%B %Y")
   end
 
end
