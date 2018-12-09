class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :school_name
      t.string :address_pref
      t.string :address_city
      t.string :address_block
      t.string :near_station
      t.integer :walk_within
      t.string :tel
      t.string :mail
      t.integer :lesson_price
      t.integer :lesson_time
      t.integer :admission_fee
      t.boolean :trial_lesson
      t.string :card_photo
      t.string :cover_photo
      t.text :self_pr
      t.references :movie_relation, foreign_key: true
      t.references :photo_relation, foreign_key: true
      t.integer :instructor_start_year
      t.text :instructor_profile
      t.boolean :instruct_female
      t.boolean :instruct_child
      t.boolean :instruct_male
      t.references :genre_relation, foreign_key: true
      t.string :twitter_id
      t.string :facebook_id
      t.string :home_page_url
      t.integer :status

      t.timestamps
    end
  end
end
