class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name
      t.string :location
      t.date :founding_date
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
