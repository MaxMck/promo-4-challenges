class Post < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :name, :url, :user
  validates :url, format: { with:
    /(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?/, message: "invalid url" }
  validates :name, uniqueness: { case_sensitive: false }
  validates :name, length: { minimum: 5 }
end