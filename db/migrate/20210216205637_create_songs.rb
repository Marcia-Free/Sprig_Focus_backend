class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :song_name, default: 'Song'
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end
end
