class User < ActiveRecord::Base
  
  has_many :articles
  has_many :sources

  validates :user_name, :uniqueness => true

end
