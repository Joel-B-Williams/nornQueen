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

ActiveRecord::Schema.define(version: 2018_12_27_003912) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "broods", force: :cascade do |t|
    t.string "type"
    t.integer "min_size"
    t.integer "max_size"
    t.integer "size"
    t.text "profile"
    t.integer "points_per_model"
    t.string "battlefield_role"
    t.integer "roster_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "one_or_none_categories", force: :cascade do |t|
    t.string "name"
    t.integer "brood_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "one_or_none_choices", force: :cascade do |t|
    t.string "name"
    t.integer "points"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", force: :cascade do |t|
    t.string "name"
    t.integer "points"
    t.boolean "optional"
    t.boolean "weapon"
    t.boolean "wargear"
    t.string "profile"
    t.integer "brood_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rosters", force: :cascade do |t|
    t.string "name"
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "special_rules", force: :cascade do |t|
    t.string "name"
    t.string "text"
    t.integer "ruleholder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
