class AddBoardIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :board_id, :integer
  end
end
