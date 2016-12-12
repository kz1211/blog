class Post < ApplicationRecord
  has_many :comments
  validates :content, presence: true,
  length: { minimum: 5 }
  has_many :taggable
   has_many :tag, through: :taggable
end
