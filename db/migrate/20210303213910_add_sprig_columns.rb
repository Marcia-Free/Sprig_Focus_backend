class AddSprigColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :sprigs, :user_id, :integer
  end
end
