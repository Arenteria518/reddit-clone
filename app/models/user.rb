class User < ActiveRecord::Base
  has_many :posts
  validates :username, presence: true, length: {maximum: 20},
             uniqueness: true

  validates :email, presence: true, length: {maximum: 255},
              uniqueness: true
end
