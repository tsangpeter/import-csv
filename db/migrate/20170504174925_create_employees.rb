class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.date :date
      t.integer :number
      t.text :description

      t.timestamps
    end
  end
end
