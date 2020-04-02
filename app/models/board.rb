class Board < ApplicationRecord
  belongs_to :user
  has_many :posts
  attachment :image
  end
