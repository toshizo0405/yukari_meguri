class Post < ApplicationRecord
  has_one_attached :image
  belongs_to :member
  has_many:tag_middles
  has_many:tags,through: :tag_middles, dependent: :destroy

   validates :title, presence: true
   validates :prefectues, presence: true
   validates :area, presence: true
   validates :access, presence: true
   validates :nearby_information, presence: true
   validates :go_around, presence: true
   validates :impressions, presence: true

end
