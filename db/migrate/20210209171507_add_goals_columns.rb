class AddGoalsColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :goals, :user_id, :integer
    add_column :goals, :tag_id, :integer
  end
end
