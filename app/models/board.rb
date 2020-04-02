class Board < ApplicationRecord
  belongs_to :user
  has_many :posts
  belongs_to :category
  attachment :image
  end
