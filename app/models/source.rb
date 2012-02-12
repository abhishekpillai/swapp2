class Source < ActiveRecord::Base
  
  has_many :articles
  has_many :genres
  
end