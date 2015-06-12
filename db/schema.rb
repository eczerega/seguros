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

ActiveRecord::Schema.define(version: 20150612191948) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "empresas", force: true do |t|
    t.string   "nombre"
    t.string   "rut"
    t.string   "digito_verificador"
    t.string   "giro"
    t.string   "domicilio_comercial"
    t.string   "representante_legal"
    t.string   "mail"
    t.string   "telefono"
    t.string   "cuenta_bancria"
    t.string   "banco"
    t.integer  "estado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "informacion_productos", force: true do |t|
    t.string   "nombre"
    t.string   "tipo"
    t.integer  "prima"
    t.integer  "valor_asegurado"
    t.integer  "duracion_meses"
    t.string   "aseguradora_responsable"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "insurance_companies", force: true do |t|
    t.string   "name"
    t.string   "rut"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marcas_autos", force: true do |t|
    t.string   "marca"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "producto_inmuebles", force: true do |t|
    t.string   "producto"
    t.string   "tipo_vivienda"
    t.string   "construccion"
    t.string   "region"
    t.string   "ciudad"
    t.string   "comuna"
    t.string   "calle"
    t.integer  "numero"
    t.date     "fecha_inicio"
    t.date     "fecha_termino"
    t.string   "nombre_comprador"
    t.string   "apellido_comprador"
    t.string   "rut_comprador"
    t.string   "digito_verificador_comprador"
    t.string   "email_comprador"
    t.string   "numero_comprador"
    t.string   "nombre_asegurado"
    t.string   "apellido_asegurado"
    t.string   "rut_asegurado"
    t.integer  "digito_verificador_asegurado"
    t.string   "email_asegurado"
    t.string   "numero_asegurado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "producto_personas", force: true do |t|
    t.string   "producto"
    t.string   "nombre_comprador"
    t.string   "apellido_comprador"
    t.string   "rut_comprador"
    t.integer  "digito_verifiador_comprador"
    t.string   "email_comprador"
    t.string   "numero_comprador"
    t.string   "nombre_asegurado"
    t.string   "apellido_asegurado"
    t.string   "rut_asegurado"
    t.integer  "digito_verificador_asegurado"
    t.string   "email_asegurado"
    t.string   "numero_asegurado"
    t.date     "fecha_inicio"
    t.date     "fecha_termino"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "producto_tecnologia", force: true do |t|
    t.string   "producto"
    t.string   "tipo_producto"
    t.string   "marca"
    t.integer  "anho"
    t.date     "fecha_inicio"
    t.date     "fecha_termino"
    t.string   "nombre_comprador"
    t.string   "apellido_comprador"
    t.string   "rut_comprador"
    t.integer  "digito_verifiador_comprador"
    t.string   "email_comprador"
    t.string   "numero_comprador"
    t.string   "nombre_asegurado"
    t.string   "apellido_asegurado"
    t.string   "rut_asegurado"
    t.integer  "digito_verificador_asegurado"
    t.string   "email_asegurado"
    t.string   "numero_asegurado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "producto_vehiculos", force: true do |t|
    t.string   "producto"
    t.string   "marca"
    t.string   "modelos"
    t.integer  "anho"
    t.string   "motor"
    t.string   "patente"
    t.date     "fecha_inicio"
    t.date     "fecha_termino"
    t.string   "nombre_comprador"
    t.string   "apellido_comprador"
    t.string   "rut_comprador"
    t.integer  "digito_verifiador_comprador"
    t.string   "email_comprador"
    t.string   "numero_comprador"
    t.string   "nombre_asegurado"
    t.string   "apellido_asegurado"
    t.string   "rut_asegurado"
    t.integer  "digito_verificador_asegurado"
    t.string   "email_asegurado"
    t.string   "numero_asegurado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shop_points", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "comuna"
    t.string   "rut"
    t.string   "street"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "rut"
    t.string   "email"
    t.string   "password_digest"
    t.string   "image"
    t.string   "kind"
    t.integer  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
