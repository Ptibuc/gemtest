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

ActiveRecord::Schema.define(version: 20161126145140) do

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

  create_table "roles", force: :cascade do |t|
    t.string   "libelle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
