class CreateMoviedetails < ActiveRecord::Migration
  def change
    create_table :moviedetails do |t|
      t.string :title
      t.integer :year
      t.string :rated
      t.string :awards
      t.integer :metascore
      t.integer :imdbrating

      t.timestamps null: false
    end
  end
end
