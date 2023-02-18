class Post < ApplicationRecord
  has_one_attached :image
  belongs_to :member
  has_many:tag_middles
  has_many:tags,through: :tag_middles
end
