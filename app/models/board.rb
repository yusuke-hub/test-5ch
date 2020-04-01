class Board < ApplicationRecord
  has_many :posts, :foreign_key => 'board_id'
  belongs_to :user
  attachment :image
end
