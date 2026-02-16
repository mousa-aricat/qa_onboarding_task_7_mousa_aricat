class CreateFinancialPackage < ActiveRecord::Migration[8.1]
  def change
    create_table :financial_packages do |t|
      t.date :from_date
      t.date :to_date
      t.float :amount
      t.timestamps
    end
  end
end
