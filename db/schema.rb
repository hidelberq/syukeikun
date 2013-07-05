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

ActiveRecord::Schema.define(:version => 20130705182916) do

  create_table "movies", :force => true do |t|
    t.string   "title"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "screening_id"
    t.string   "description"
  end

  add_index "movies", ["screening_id"], :name => "index_movies_on_screening_id"

  create_table "reviews", :force => true do |t|
    t.integer  "total"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "user_id"
    t.integer  "movie_id"
    t.string   "comment"
    t.integer  "edit"
    t.integer  "performance"
    t.integer  "script"
    t.integer  "camera"
  end

  create_table "screenings", :force => true do |t|
    t.integer  "nth"
    t.string   "subtitle"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "nickname"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.boolean  "admin"
    t.string   "password_digest"
  end

end
