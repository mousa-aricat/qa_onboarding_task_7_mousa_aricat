class AddEmployeeIdToTermination < ActiveRecord::Migration[8.1]
  def change
      add_column :terminations, :employee_id, :int
  end
end
