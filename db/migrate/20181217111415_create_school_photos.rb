class CreateSchoolPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :school_photos do |t|
      t.references :school, foreign_key: true
      t.string :photo

      t.timestamps
    end
  end
end
