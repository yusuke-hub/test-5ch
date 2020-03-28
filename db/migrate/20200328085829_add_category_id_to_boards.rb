class AddCategoryIdToBoards < ActiveRecord::Migration[5.2]
  def change
    add_column :boards, :category_id, :integer
  end
end
