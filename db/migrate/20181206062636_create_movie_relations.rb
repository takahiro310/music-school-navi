class CreateMovieRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_relations do |t|
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
