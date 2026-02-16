class AddEmployeeIdToFinancialPackage < ActiveRecord::Migration[8.1]
  def change
      add_column :financial_packages, :employee_id, :int
  end
end
