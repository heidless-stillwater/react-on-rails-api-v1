class Post < ApplicationRecord
  belongs_to :user, optional: true
  validates_presence_of :title, :body

  has_one_attached :image
end
