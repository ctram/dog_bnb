class User < ActiveRecord::Base
  has_many :breeds
  has_many :posts
end
