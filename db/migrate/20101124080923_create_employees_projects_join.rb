class CreateEmployeesProjectsJoin < ActiveRecord::Migration
  def self.up
    create_table :employees_projects, :id => false do |t|
      t.column :employee_id, :integer
      t.column :project_id, :integer
    end
  end

  def self.down
    drop_table :employees_projects
  end
end
