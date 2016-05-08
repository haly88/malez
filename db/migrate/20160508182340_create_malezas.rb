class CreateMalezas < ActiveRecord::Migration
  def change
    create_table :malezas do |t|
      t.string :nombre_comun
      t.string :nombre_cientifico
      t.references :ciclo, index: true, foreign_key: true
      t.string :crecimiento
      t.boolean :espina, default: false
      t.boolean :latex, default: false
      t.string :tipo_de_tallo
      t.boolean :peciolo, default: false
      t.string :tipo_de_hoja

      t.timestamps null: false
    end
  end
end
