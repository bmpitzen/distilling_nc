# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_27_021500) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "distilleries", force: :cascade do |t|
    t.string "name"
    t.string "street_address"
    t.string "city"
    t.string "zip"
    t.bigint "region_id", null: false
    t.boolean "tours"
    t.string "tour_cost"
    t.string "website"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["region_id"], name: "index_distilleries_on_region_id"
  end

  create_table "regions", force: :cascade do |t|
    t.string "region"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spirit_types", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spirits", force: :cascade do |t|
    t.string "name"
    t.bigint "distillery_id", null: false
    t.bigint "spirit_type_id", null: false
    t.string "proof"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["distillery_id"], name: "index_spirits_on_distillery_id"
    t.index ["spirit_type_id"], name: "index_spirits_on_spirit_type_id"
  end

  add_foreign_key "distilleries", "regions"
  add_foreign_key "spirits", "distilleries"
  add_foreign_key "spirits", "spirit_types"
end
