# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_12_09_065551) do

  create_table "genre_relations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_genre_relations_on_genre_id"
  end

  create_table "genres", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "genre_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_relations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_movie_relations_on_movie_id"
  end

  create_table "movies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "youtube_v"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photo_relations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "photo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id"], name: "index_photo_relations_on_photo_id"
  end

  create_table "photos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "photo_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "school_name"
    t.string "address_pref"
    t.string "address_city"
    t.string "address_block"
    t.string "near_station"
    t.integer "walk_within"
    t.string "tel"
    t.string "mail"
    t.integer "lesson_price"
    t.integer "lesson_time"
    t.integer "admission_fee"
    t.boolean "trial_lesson"
    t.string "card_photo"
    t.string "cover_photo"
    t.text "self_pr"
    t.bigint "movie_relation_id"
    t.bigint "photo_relation_id"
    t.integer "instructor_start_year"
    t.text "instructor_profile"
    t.boolean "instruct_female"
    t.boolean "instruct_child"
    t.boolean "instruct_male"
    t.bigint "genre_relation_id"
    t.string "twitter_id"
    t.string "facebook_id"
    t.string "home_page_url"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_relation_id"], name: "index_schools_on_genre_relation_id"
    t.index ["movie_relation_id"], name: "index_schools_on_movie_relation_id"
    t.index ["photo_relation_id"], name: "index_schools_on_photo_relation_id"
  end

  add_foreign_key "genre_relations", "genres"
  add_foreign_key "movie_relations", "movies"
  add_foreign_key "photo_relations", "photos"
  add_foreign_key "schools", "genre_relations"
  add_foreign_key "schools", "movie_relations"
  add_foreign_key "schools", "photo_relations"
end
