class CreateSongGenres < ActiveRecord::Migration
  def change
    create_table :song_genres do |t|
      t.string :genre
    end
  end
end
