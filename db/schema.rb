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

ActiveRecord::Schema.define(version: 2020_09_17_050606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

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

  create_table "movies", force: :cascade do |t|
    t.string "title", null: false
    t.date "reserved_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "not_very_effective_types", id: false, force: :cascade do |t|
    t.integer "type_id", null: false
    t.integer "not_very_effective_type_id", null: false
    t.index ["type_id", "not_very_effective_type_id"], name: "index_uniqueness_on_not_very_effective_types", unique: true
  end

  create_table "sentences", force: :cascade do |t|
    t.string "text", null: false
    t.bigint "title_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["title_id"], name: "index_sentences_on_title_id"
  end

  create_table "titles", force: :cascade do |t|
    t.string "text", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "sentences", "titles"
end
