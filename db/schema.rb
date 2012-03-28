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

ActiveRecord::Schema.define(:version => 20120328105009) do

  create_table "cathedras", :force => true do |t|
    t.string   "cath_name"
    t.string   "cath_head"
    t.string   "cath_secretary"
    t.string   "cath_cabinet"
    t.string   "cath_phone"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "cell_skeds", :force => true do |t|
    t.integer  "number_pair"
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "courses", :force => true do |t|
    t.integer  "numder"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups", :force => true do |t|
    t.integer  "gr_specialty", :null => false
    t.integer  "gr_course",    :null => false
    t.string   "gr_cipher",    :null => false
    t.integer  "gr_quantity"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "specialties", :force => true do |t|
    t.string   "spec_name"
    t.string   "spec_reduction"
    t.integer  "spec_cathedra"
    t.string   "spec_description"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "student_surname"
    t.string   "student_name"
    t.string   "student_secondname"
    t.integer  "student_group"
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
    t.boolean  "student_captain",    :default => false
  end

  create_table "teachers", :force => true do |t|
    t.string   "teach_name"
    t.string   "teach_secondname"
    t.string   "teach_surname"
    t.integer  "teach_cathedra"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "user_surname",    :null => false
    t.string   "user_name",       :null => false
    t.string   "user_secondname", :null => false
    t.string   "user_login",      :null => false
    t.string   "user_password",   :null => false
    t.string   "user_email",      :null => false
    t.string   "user_icq"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
