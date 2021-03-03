class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :name
      t.text :info
      t.date :date
      t.time :time
      t.boolean :completed, default: false
      t.string :imageurl

      t.timestamps
    end
  end
end
