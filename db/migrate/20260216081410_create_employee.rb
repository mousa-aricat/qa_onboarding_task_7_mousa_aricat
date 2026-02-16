class CreateEmployee < ActiveRecord::Migration[8.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.date :hire_date
      t.bigint :employment_number
      t.timestamps
    end
  end
end
