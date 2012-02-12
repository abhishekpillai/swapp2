class Genre < ActiveRecord::Base
  #Just for this weekend, we'll assume that a genre has only ONE source (i.e. sports always belongs to ESPN)
  belongs_to :source
  
end