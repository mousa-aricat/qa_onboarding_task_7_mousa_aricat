class CreateTermination < ActiveRecord::Migration[8.1]
  def change
    create_table :terminations do |t|
      t.date :date
      t.timestamps
    end
  end
end
