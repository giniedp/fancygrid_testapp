require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
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

