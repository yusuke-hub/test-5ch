class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
      add_column :users, :name, :string, default: '名無しさん', null: false
  end
end
