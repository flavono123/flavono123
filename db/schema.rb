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

ActiveRecord::Schema.define(version: 2020_08_09_045919) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "effective_types", id: false, force: :cascade do |t|
    t.integer "type_id", null: false
    t.integer "effective_type_id", null: false
    t.index ["type_id", "effective_type_id"], name: "index_uniqueness_on_effective_types", unique: true
  end

  create_table "ineffective_types", id: false, force: :cascade do |t|
    t.integer "type_id", null: false
    t.integer "ineffective_type_id", null: false
    t.index ["type_id", "ineffective_type_id"], name: "index_uniqueness_on_ineffective_types", unique: true
  end

  create_table "not_very_effective_types", id: false, force: :cascade do |t|
    t.integer "type_id", null: false
    t.integer "not_very_effective_type_id", null: false
    t.index ["type_id", "not_very_effective_type_id"], name: "index_uniqueness_on_not_very_effective_types", unique: true
  end

  create_table "types", force: :cascade do |t|
    t.string "name", null: false
  end

end
