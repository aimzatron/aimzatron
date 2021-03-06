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

ActiveRecord::Schema.define(:version => 20130612224128) do

  create_table "blogs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "description"
  end

  create_table "check_ins", :force => true do |t|
    t.text    "text"
    t.string  "venue"
    t.string  "location"
    t.integer "checkin_time"
    t.string  "address"
    t.float   "latitude"
    t.float   "longitude"
  end

  create_table "comments", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "post_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"

  create_table "games", :force => true do |t|
    t.boolean  "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "type"
    t.string   "uid"
  end

  create_table "locations", :force => true do |t|
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.boolean  "gmaps"
  end

  create_table "movies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "blog_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "uid"
    t.string   "provider"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "token"
  end

end
