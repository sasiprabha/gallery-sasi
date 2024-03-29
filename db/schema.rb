# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120502150621) do

  create_table "phones", :force => true do |t|
    t.string   "manufacturer"
    t.string   "model"
    t.integer  "price"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "img_url"
  end

  create_table "phones_in_shops", :force => true do |t|
    t.integer  "phone_id"
    t.integer  "shop_id"
    t.integer  "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "phones_in_shops", ["shop_id", "phone_id"], :name => "index_phones_in_shops_on_shop_id_and_phone_id"

  create_table "shops", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone_no"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

  add_index "shops", ["name"], :name => "index_shops_on_name", :unique => true

end
