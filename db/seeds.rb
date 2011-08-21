require "name_generator"

Role.destroy_all
User.destroy_all
Company.destroy_all
Employee.destroy_all

names = NameGenerator.generate(1000, 5, 15)

Role.create(:name => "admin")
Role.create(:name => "boss")
Role.create(:name => "worker")
roles = Role.all

500.times do
  User.create(:username => names.shift, :roles => [ roles[rand(roles.length)] ] )
end
users = User.all

50.times do
  name = names.shift
  Company.create(:name => name, :description => name)
end
companies = Company.all

users.each do |user|
  Employee.create(:user => user, :company => companies[rand(companies.length)])
end
