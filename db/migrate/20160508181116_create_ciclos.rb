class CreateCiclos < ActiveRecord::Migration
  def change
    create_table :ciclos do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
