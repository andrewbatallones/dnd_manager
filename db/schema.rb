# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_02_07_143123) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "users_id", null: false
    t.index ["users_id"], name: "index_campaigns_on_users_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "regions_id", null: false
    t.index ["regions_id"], name: "index_cities_on_regions_id"
  end

  create_table "npcs", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "armor_class"
    t.integer "hit_points"
    t.string "hit_dice"
    t.integer "speed"
    t.string "senses"
    t.string "languages"
    t.string "challenge"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "regions_id", null: false
    t.bigint "cities_id"
    t.index ["cities_id"], name: "index_npcs_on_cities_id"
    t.index ["regions_id"], name: "index_npcs_on_regions_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "campaigns_id", null: false
    t.index ["campaigns_id"], name: "index_regions_on_campaigns_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "campaigns", "users", column: "users_id"
  add_foreign_key "cities", "regions", column: "regions_id"
  add_foreign_key "npcs", "regions", column: "regions_id"
  add_foreign_key "regions", "campaigns", column: "campaigns_id"
end
