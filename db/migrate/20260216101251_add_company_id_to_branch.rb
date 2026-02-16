class AddCompanyIdToBranch < ActiveRecord::Migration[8.1]
  def change
      add_column :branches, :company_id, :int
  end
end
