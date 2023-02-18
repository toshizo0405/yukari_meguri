class Tag < ApplicationRecord
    has_many :tag_middles, dependent: :destroy
end
