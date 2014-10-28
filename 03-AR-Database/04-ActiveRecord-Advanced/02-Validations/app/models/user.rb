class User < ActiveRecord::Base
  has_many :posts
  validates :username, presence: true
  validates :email, presence: true
  validates :username, uniqueness: { case_sensitive: false }
  validates :email, format: { with: /([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})/, message: "invalid email" }
end