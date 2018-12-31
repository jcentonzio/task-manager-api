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

ActiveRecord::Schema.define(version: 20180418193250) do

  create_table "campaings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "origin_email"
    t.string   "subject"
    t.string   "url_cart"
    t.integer  "type_campaing_id"
    t.integer  "restriction_id"
    t.integer  "time_for_sending_id"
    t.string   "hidden_copy"
    t.string   "auto_login_secret_key"
    t.integer  "number_product_cart"
    t.integer  "number_recomndations"
    t.integer  "car_restriction_id"
    t.integer  "option_restriction_id"
    t.string   "value_restriction"
    t.integer  "when_the_newletter_id"
    t.integer  "who_will_receive_newletter_id"
    t.integer  "number_last_day"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["car_restriction_id"], name: "index_campaings_on_car_restriction_id", using: :btree
    t.index ["option_restriction_id"], name: "index_campaings_on_option_restriction_id", using: :btree
    t.index ["restriction_id"], name: "index_campaings_on_restriction_id", using: :btree
    t.index ["time_for_sending_id"], name: "index_campaings_on_time_for_sending_id", using: :btree
    t.index ["type_campaing_id"], name: "index_campaings_on_type_campaing_id", using: :btree
    t.index ["when_the_newletter_id"], name: "index_campaings_on_when_the_newletter_id", using: :btree
    t.index ["who_will_receive_newletter_id"], name: "index_campaings_on_who_will_receive_newletter_id", using: :btree
  end

  create_table "car_restrictions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "option_restrictions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restrictions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.string   "description"
    t.boolean  "done",        default: false
    t.datetime "deadline"
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["user_id"], name: "index_tasks_on_user_id", using: :btree
  end

  create_table "time_for_sendings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_campaings", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                                default: "",      null: false
    t.string   "encrypted_password",                   default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
    t.string   "auth_token"
    t.string   "provider",                             default: "email", null: false
    t.string   "uid",                                  default: "",      null: false
    t.boolean  "allow_password_change",                default: false
    t.string   "name"
    t.text     "tokens",                 limit: 65535
    t.index ["auth_token"], name: "index_users_on_auth_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree
  end

  create_table "when_the_newletters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "who_will_receive_newletters", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "campaings", "car_restrictions"
  add_foreign_key "campaings", "option_restrictions"
  add_foreign_key "campaings", "restrictions"
  add_foreign_key "campaings", "time_for_sendings"
  add_foreign_key "campaings", "type_campaings"
  add_foreign_key "campaings", "when_the_newletters"
  add_foreign_key "campaings", "who_will_receive_newletters"
  add_foreign_key "tasks", "users"
end
