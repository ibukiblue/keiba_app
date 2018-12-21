class CreateUsermores < ActiveRecord::Migration[5.2]
  def change
    create_table :usermores do |t|
      t.string :name
      t.integer :sex

      t.timestamps
    end
  end
end
