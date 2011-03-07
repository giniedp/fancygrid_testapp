class Employee < ActiveRecord::Base
  belongs_to :company
  belongs_to :user
  has_and_belongs_to_many :projects
  
end

# == Schema Information
#
# Table name: employees
#
#  id         :integer         not null, primary key
#  company_id :integer
#  name       :string(255)
#  department :string(255)
#  birthday   :datetime
#  created_at :datetime
#  updated_at :datetime
#

