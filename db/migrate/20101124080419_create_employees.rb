class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.references :company
      t.string :name
      t.string :department
      t.datetime :birthday

      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
