class Tag < ApplicationRecord
    has_many :tag_middles, dependent: :destroy
    has_many:posts,through: :tag_middles, dependent: :destroy
end
