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

ActiveRecord::Schema.define(version: 20_181_203_145_541) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'accounts', force: :cascade do |t|
    t.string 'account_type'
    t.integer 'balance'
    t.bigint 'user_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['user_id'], name: 'index_accounts_on_user_id'
  end
  # need to change receiving_id to display receipient or sender

  create_table 'transactions', force: :cascade do |t|
    t.string 'detail'
    t.integer 'amount'
    t.boolean 'approve'
    t.bigint 'account_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer 'receiving_id'
    t.string 'transaction_type'
    t.index ['account_id'], name: 'index_transactions_on_account_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'username'
    t.string 'password_digest'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  add_foreign_key 'accounts', 'users'
  add_foreign_key 'transactions', 'accounts'
end
