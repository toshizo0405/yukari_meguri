class Bookmark < ApplicationRecord
  
  belongs_to :post
  belongs_to :member
  
end
