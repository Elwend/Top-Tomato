class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.integer :critics_score
      t.string :release_date
      t.string :poster_url
      t.text :synopsis
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
