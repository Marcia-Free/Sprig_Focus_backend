class CreateSprigs < ActiveRecord::Migration[6.0]
  def change
    create_table :sprigs do |t|
      t.string :name
      t.string :face
      t.string :color

      t.timestamps
    end
  end
end
