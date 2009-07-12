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

ActiveRecord::Schema.define(:version => 20090711184649) do

  create_table "customers", :force => true do |t|
    t.integer  "customer_num"
    t.string   "company_name"
    t.string   "state"
    t.string   "city"
    t.integer  "zipcode"
    t.string   "tel_number"
    t.string   "email"
    t.string   "web"
    t.string   "contact_prename"
    t.string   "contact_surname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "street"
  end

  create_table "invoices", :force => true do |t|
    t.integer  "invoice_num"
    t.date     "date"
    t.integer  "customer_id"
    t.decimal  "sum",         :precision => 8, :scale => 2, :default => 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stored_files", :force => true do |t|
    t.string   "type"
    t.string   "filename"
    t.string   "content_type"
    t.integer  "size"
    t.integer  "invoice_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "state"
  end

end
