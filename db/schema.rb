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

ActiveRecord::Schema.define(:version => 20110810161717) do

  create_table "map_authors", :force => true do |t|
    t.string   "nick"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "map_episodes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "map_slots", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "playable",   :default => true, :null => false
  end

  create_table "news", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "privacy_levels", :force => true do |t|
    t.integer  "level"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "submission_comments", :force => true do |t|
    t.integer  "submission_id"
    t.integer  "user_id"
    t.text     "comment",       :limit => 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "submission_image_links", :force => true do |t|
    t.integer  "submission_id"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "submissions", :force => true do |t|
    t.string   "name"
    t.integer  "map_episode_id"
    t.integer  "map_slot_id"
    t.integer  "map_author_id"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "intended_map_episode_id"
    t.integer  "intended_map_slot_id"
    t.datetime "link_updated_at"
    t.integer  "image_count"
    t.integer  "privacy_level_id"
    t.integer  "comment_count"
  end

  create_table "user_roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_role_id",                          :default => 1,  :null => false
    t.string   "nick"
    t.boolean  "team"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["nick"], :name => "index_users_on_nick", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
