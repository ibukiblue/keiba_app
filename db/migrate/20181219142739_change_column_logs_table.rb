class ChangeColumnLogsTable < ActiveRecord::Migration[5.2]
    def change
      rename_column :logs, :giary, :diary
    end
end
