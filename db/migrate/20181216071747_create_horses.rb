class CreateHorses < ActiveRecord::Migration[5.2]
  def change
    create_table :horses do |t|
      t.string :name
      t.integer :sex
      t.string :age
      t.string :record

      t.timestamps
    end
  end
end
