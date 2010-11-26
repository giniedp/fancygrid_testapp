require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: companies
#
#  id            :integer         not null, primary key
#  name          :string(255)
#  location      :string(255)
#  founding_date :date
#  description   :text
#  created_at    :datetime
#  updated_at    :datetime
#

