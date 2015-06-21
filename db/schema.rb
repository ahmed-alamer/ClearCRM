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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150621220147) do

  create_table "accounts", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.text     "description",      limit: 65535
    t.string   "industry",         limit: 255
    t.integer  "annual_revenue",   limit: 4
    t.integer  "phone",            limit: 4
    t.integer  "fax",              limit: 4
    t.text     "billing_address",  limit: 65535
    t.text     "shipping_address", limit: 65535
    t.integer  "rating",           limit: 4
    t.integer  "employees",        limit: 4
    t.string   "ticker_symbol",    limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "calls", force: :cascade do |t|
    t.string   "title",          limit: 255
    t.text     "summary",        limit: 65535
    t.time     "duration_hours"
    t.date     "call_date"
    t.string   "direction",      limit: 255
    t.text     "notes",          limit: 65535
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "employee_id",    limit: 4
    t.integer  "contact_id",     limit: 4
  end

  create_table "cases", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.boolean  "solved",      limit: 1
    t.string   "case_number", limit: 255
    t.string   "case_type",   limit: 255
    t.string   "status",      limit: 255
    t.string   "priority",    limit: 255
    t.text     "resolution",  limit: 65535
    t.text     "work_log",    limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "employee_id", limit: 4
    t.integer  "contact_id",  limit: 4
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.integer  "work_phone",        limit: 4
    t.integer  "fax",               limit: 4
    t.integer  "home_phone",        limit: 4
    t.integer  "cell_phone",        limit: 4
    t.boolean  "do_not_call",       limit: 1
    t.string   "assistant",         limit: 255
    t.integer  "assistant_phone",   limit: 4
    t.string   "lead_source",       limit: 255
    t.text     "primary_address",   limit: 65535
    t.text     "alternate_address", limit: 65535
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "account_id",        limit: 4
    t.string   "email",             limit: 255
  end

  create_table "emails", force: :cascade do |t|
    t.date     "sent"
    t.integer  "messsage_id", limit: 4
    t.string   "subject",     limit: 255
    t.string   "status",      limit: 255
    t.string   "intent",      limit: 255
    t.text     "cc",          limit: 65535
    t.text     "bcc",         limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "employee_id", limit: 4
    t.integer  "contact_id",  limit: 4
  end

  create_table "employees", force: :cascade do |t|
    t.string   "user_name",       limit: 255
    t.string   "password_digest", limit: 255
    t.string   "user_type",       limit: 255
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.boolean  "admin",           limit: 1
    t.string   "job_title",       limit: 255
    t.string   "department",      limit: 255
    t.integer  "cell_phone",      limit: 4
    t.integer  "home_phone",      limit: 4
    t.text     "address",         limit: 65535
    t.boolean  "active",          limit: 1
    t.string   "email",           limit: 255
    t.string   "messenger_id",    limit: 255
    t.string   "messenger_type",  limit: 255
    t.integer  "reports_to",      limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "phone_extension", limit: 4
  end

  create_table "meetings", force: :cascade do |t|
    t.string   "title",               limit: 255
    t.string   "log",                 limit: 255
    t.string   "location",            limit: 255
    t.string   "join_url",            limit: 255
    t.string   "host_url",            limit: 255
    t.string   "creator",             limit: 255
    t.string   "external_id",         limit: 255
    t.time     "duration"
    t.date     "meeting_date"
    t.string   "status",              limit: 255
    t.string   "meeting_type",        limit: 255
    t.time     "reminder"
    t.time     "email_reminder"
    t.boolean  "email_reminder_sent", limit: 1
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.time     "meeting_time"
  end

  create_table "notes", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "content",     limit: 65535
    t.text     "tags",        limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "employee_id", limit: 4
    t.integer  "contact_id",  limit: 4
  end

  create_table "opportunities", force: :cascade do |t|
    t.string   "name",             limit: 255
    t.integer  "created_by",       limit: 4
    t.text     "description",      limit: 65535
    t.boolean  "active",           limit: 1
    t.string   "opportunity_type", limit: 255
    t.float    "amount",           limit: 24
    t.string   "currency",         limit: 4
    t.date     "close_date"
    t.float    "probability",      limit: 24
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "description", limit: 255
    t.string   "category",    limit: 255
    t.string   "source",      limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
