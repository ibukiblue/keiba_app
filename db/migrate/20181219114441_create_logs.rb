class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.text :giary
      t.timestamps
    end
  end
end
ß