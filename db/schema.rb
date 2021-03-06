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

ActiveRecord::Schema.define(version: 20161127080656) do

  create_table "caracteristiques", force: :cascade do |t|
    t.string   "name"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_caracteristiques_on_site_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["site_id"], name: "index_categories_on_site_id"
  end

  create_table "has_caracteristique", id: false, force: :cascade do |t|
    t.string   "value"
    t.integer  "product_id"
    t.integer  "caracteristique_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["caracteristique_id"], name: "index_has_caracteristique_on_caracteristique_id"
    t.index ["product_id"], name: "index_has_caracteristique_on_product_id"
  end

  create_table "has_caracteristiques", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "caracteristique_id"
    t.string   "value"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["caracteristique_id"], name: "index_has_caracteristiques_on_caracteristique_id"
    t.index ["product_id"], name: "index_has_caracteristiques_on_product_id"
  end

  create_table "has_categorie", id: false, force: :cascade do |t|
    t.integer  "site_id"
    t.integer  "categorie_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["categorie_id"], name: "index_has_categorie_on_categorie_id"
    t.index ["site_id"], name: "index_has_categorie_on_site_id"
  end

  create_table "has_categories", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "categorie_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["categorie_id"], name: "index_has_categories_on_categorie_id"
    t.index ["product_id"], name: "index_has_categories_on_product_id"
  end

  create_table "phrases", force: :cascade do |t|
    t.string   "lang"
    t.string   "libelle"
    t.integer  "caracteristique_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["caracteristique_id"], name: "index_phrases_on_caracteristique_id"
  end

  create_table "pourtests", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.string   "photo"
    t.string   "client_id"
    t.string   "ean"
    t.string   "shortdescription"
    t.text     "longdescription"
    t.integer  "site_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["site_id"], name: "index_products_on_site_id"
  end

  create_table "sites", force: :cascade do |t|
    t.string   "url"
    t.string   "system"
    t.string   "logo"
    t.string   "lang"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sites_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "photo"
    t.string   "langage"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "is_admin",               default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
