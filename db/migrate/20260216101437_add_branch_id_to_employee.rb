class AddBranchIdToEmployee < ActiveRecord::Migration[8.1]
  def change
    add_column :employees, :branch_id, :int
  end
end
