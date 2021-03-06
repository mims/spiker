# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100628104740) do

  create_table "additional_attributes", :force => true do |t|
    t.string  "name",          :limit => 30, :null => false
    t.string  "resource_type",               :null => false
    t.string  "type",                        :null => false
    t.integer "length"
    t.integer "precision"
  end

  create_table "client_type_relationships", :id => false, :force => true do |t|
    t.integer "parent_id"
    t.integer "child_id"
  end

  create_table "client_types", :force => true do |t|
    t.string   "name",       :limit => 30, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "office_types", :force => true do |t|
    t.string   "name",       :limit => 30, :null => false
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offices", :force => true do |t|
    t.string   "name",           :limit => 30, :null => false
    t.integer  "parent_id"
    t.integer  "office_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username",           :limit => 30,                :null => false
    t.string   "email",              :limit => 30,                :null => false
    t.string   "crypted_password",                                :null => false
    t.string   "password_salt",                                   :null => false
    t.string   "persistence_token",                               :null => false
    t.integer  "failed_login_count",               :default => 0, :null => false
    t.string   "role",                                            :null => false
    t.string   "perishable_token",                                :null => false
    t.integer  "office_id",                                       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
