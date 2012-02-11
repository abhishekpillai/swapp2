class Article < ActiveRecord::Base
 belongs_to :source
 belongs_to :user
 
 validates :item_num, :uniqueness => true
end