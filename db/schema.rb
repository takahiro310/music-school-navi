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

ActiveRecord::Schema.define(version: 2018_12_21_085540) do

  create_table "genres", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "genre_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "school_genres", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "school_id"
    t.bigint "genre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genre_id"], name: "index_school_genres_on_genre_id"
    t.index ["school_id"], name: "index_school_genres_on_school_id"
  end

  create_table "school_movies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "school_id"
    t.string "youtube_v"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_school_movies_on_school_id"
  end

  create_table "school_photos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "school_id"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_school_photos_on_school_id"
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
    t.integer "instructor_start_year"
    t.text "instructor_profile"
    t.boolean "instruct_female"
    t.boolean "instruct_child"
    t.boolean "instruct_male"
    t.string "twitter_id"
    t.string "facebook_id"
    t.string "home_page_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "school_genres", "genres"
  add_foreign_key "school_genres", "schools"
  add_foreign_key "school_movies", "schools"
  add_foreign_key "school_photos", "schools"
end
