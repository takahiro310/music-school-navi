class CreatePhotoRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :photo_relations do |t|
      t.references :photo, foreign_key: true

      t.timestamps
    end
  end
end
