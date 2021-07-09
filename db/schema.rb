# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_09_150018) do

  create_table "casa_alugars", force: :cascade do |t|
    t.string "local"
    t.string "metragem"
    t.integer "banheiros"
    t.integer "suites"
    t.integer "cozinhas"
    t.integer "quartos"
    t.integer "salas"
    t.integer "garagem"
    t.float "preco"
    t.float "condominio"
    t.float "desconto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "casas", force: :cascade do |t|
    t.integer "metragem"
    t.string "local"
    t.integer "dormitorios"
    t.integer "suites"
    t.integer "banheiro"
    t.integer "garagem"
    t.float "preco"
    t.float "condominio"
    t.boolean "desconto"
    t.float "desconto_num"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
