class CreateAttendanceSetup < ActiveRecord::Migration[8.1]
  def change
    create_table :attendance_setups do |t|
      t.boolean :roaster
      t.timestamps
    end
  end
end
