class AddBoardIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :board, foreign_key: true
  end
end
