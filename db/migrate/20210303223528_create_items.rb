class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :type
      t.integer :price, default: 0
      t.string :name
      t.integer :quantity, default: 1

      t.timestamps
    end
  end
end
