class AddImageIdToBoards < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :image_id, :text
  end
end
