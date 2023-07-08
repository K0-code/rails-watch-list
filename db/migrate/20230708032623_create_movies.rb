class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.text :title
      t.text :overview
      t.text :poster_url
      t.integer :rating
      t.references :bookmark, null: false, foreign_key: true

      t.timestamps
    end
  end
end
