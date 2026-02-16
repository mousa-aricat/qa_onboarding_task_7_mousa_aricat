class AddBranchIdToRooms < ActiveRecord::Migration[8.1]
  def change
      add_column :rooms, :branch_id, :int
  end
end
