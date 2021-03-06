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

ActiveRecord::Schema.define(version: 2021_10_14_163418) do

  create_table "generos", charset: "utf8mb4", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nivel_ingles", charset: "utf8mb4", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nivel_postgrados", charset: "utf8mb4", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tipo_documentos", charset: "utf8mb4", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "primer_nombre"
    t.string "segundo_nombre"
    t.string "primer_apellido"
    t.string "segundo_apellido"
    t.date "fecha_de_nacimiento"
    t.integer "edad"
    t.string "unidad_academica"
    t.string "universidad"
    t.string "pais"
    t.string "programa_academico"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "nivel_postgrado_id"
    t.bigint "nivel_ingles_id"
    t.string "historial_academico"
    t.string "certificado_ingles"
    t.string "declaracion"
    t.string "proyecto"
    t.string "ensayo"
    t.string "certificado_admision"
    t.bigint "genero_id"
    t.integer "documento"
    t.bigint "tipo_documento_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["genero_id"], name: "index_users_on_genero_id"
    t.index ["nivel_ingles_id"], name: "index_users_on_nivel_ingles_id"
    t.index ["nivel_postgrado_id"], name: "index_users_on_nivel_postgrado_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["tipo_documento_id"], name: "index_users_on_tipo_documento_id"
  end

end
