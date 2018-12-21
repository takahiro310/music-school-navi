class CreateSchoolGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :school_genres do |t|
      t.references :school, foreign_key: true
      t.references :genre, foreign_key: true

      t.timestamps
    end
  end
end
