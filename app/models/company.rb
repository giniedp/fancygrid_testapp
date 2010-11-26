class Company < ActiveRecord::Base
  has_many :employees
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

