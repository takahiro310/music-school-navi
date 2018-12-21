class CreateSchoolMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :school_movies do |t|
      t.references :school, foreign_key: true
      t.string :youtube_v

      t.timestamps
    end
  end
end
