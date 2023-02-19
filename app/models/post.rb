class Post < ApplicationRecord
  has_one_attached :image
  belongs_to :member
  has_many:tag_middles
  has_many:tags,through: :tag_middles, dependent: :destroy

   def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end

   validates :title, presence: true
   validates :prefectues, presence: true
   validates :area, presence: true
   validates :access, presence: true
   validates :nearby_information, presence: true
   validates :go_around, presence: true
   validates :impressions, presence: true

end
