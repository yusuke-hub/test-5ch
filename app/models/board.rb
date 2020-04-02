class Board < ApplicationRecord
  has_many :posts, :foreign_key => 'board_id'
  belongs_to :user
  has_many :posts
  belongs_to :category
  attachment :image
  validates :title, presence: true, length: { in: 10..60}
  validates :caption, presence: true, length: {  in: 200..1500}
end
