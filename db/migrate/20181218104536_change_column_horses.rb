class ChangeColumnHorses < ActiveRecord::Migration[5.2]
  def change
    rename_column :horses, :record, :result
  end
end
