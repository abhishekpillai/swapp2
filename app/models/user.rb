class User < ActiveRecord::Base
  has_many :articles
  has_many :sources
end
