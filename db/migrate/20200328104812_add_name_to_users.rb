class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, dafault: '名無しさん'
  end
end
