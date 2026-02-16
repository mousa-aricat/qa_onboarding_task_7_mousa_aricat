class AddBranchIdToAttendanceSetup < ActiveRecord::Migration[8.1]
  def change
    add_column :attendance_setups, :branch_id, :int
  end
end
