class Post < ApplicationRecord
  belongs_to :user
  belongs_to :board, :foreign_key => 'board_id'
  validates :content, length: { in: 1..200 }
end
