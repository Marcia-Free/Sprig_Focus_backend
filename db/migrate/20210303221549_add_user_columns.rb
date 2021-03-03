class AddUserColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :seeds, :integer
  end
end
