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

ActiveRecord::Schema.define(:version => 20110523130043) do

  create_table "answers", :force => true do |t|
    t.string   "email"
    t.string   "opt"
    t.integer  "poll_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "polls", :force => true do |t|
    t.string   "question"
    t.string   "opt1"
    t.string   "opt2"
    t.string   "opt3"
    t.integer  "opt_count1", :default => 0
    t.integer  "opt_count2", :default => 0
    t.integer  "opt_count3", :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
