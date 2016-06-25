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

ActiveRecord::Schema.define(version: 20160625140837) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "barrios", force: :cascade do |t|
    t.integer  "localidad_id"
    t.string   "barrio"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "calles", force: :cascade do |t|
    t.integer  "barrio_id"
    t.string   "calle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cliente_documentos", force: :cascade do |t|
    t.integer  "cliente_id"
    t.string   "documento"
    t.integer  "tipodoc_id"
    t.integer  "emisordoc_id"
    t.date     "vencimiento"
    t.string   "codseg"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cliente_emails", force: :cascade do |t|
    t.integer  "cliente_id"
    t.string   "email"
    t.integer  "tipoemail_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cliente_telefonos", force: :cascade do |t|
    t.integer  "cliente_id"
    t.decimal  "telefono"
    t.integer  "tipotel_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cliente_webs", force: :cascade do |t|
    t.integer  "cliente_id"
    t.string   "web"
    t.integer  "tipoweb_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "apellido"
    t.string   "apellido2"
    t.string   "nombres"
    t.string   "documento"
    t.integer  "tipodoc_id"
    t.integer  "emisordoc_id"
    t.string   "contacto"
    t.integer  "ciiu_id"
    t.integer  "tcliente_id"
    t.integer  "direccion_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "departamentos", force: :cascade do |t|
    t.integer  "provincia_id"
    t.string   "departamento"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "direccions", force: :cascade do |t|
    t.integer  "calle_id"
    t.integer  "nro"
    t.string   "pdepto"
    t.string   "acceso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enumerados", force: :cascade do |t|
    t.string   "radical"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "localidads", force: :cascade do |t|
    t.integer  "municipio_id"
    t.string   "localidad"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "municipios", force: :cascade do |t|
    t.integer  "departamento_id"
    t.string   "municipio"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "pais", force: :cascade do |t|
    t.string   "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provincia", force: :cascade do |t|
    t.integer  "pais_id"
    t.string   "provincia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
