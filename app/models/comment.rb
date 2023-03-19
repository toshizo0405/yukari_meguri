class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :member

 validates :comment, presence: true
end
