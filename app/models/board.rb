class Board < ApplicationRecord
  has_many :posts
  belongs_to :user
  attachment :image
end
