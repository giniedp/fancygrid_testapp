Role.destroy_all
User.destroy_all
Company.destroy_all
Employee.destroy_all

admin = Role.create(:name => "admin")
boss = Role.create(:name => "boss")
worker = Role.create(:name => "worker")

alice = User.create(:username => "Alice", :roles => [boss])
bob = User.create(:username => "Bob", :roles => [worker])
andrew = User.create(:username => "Andrew", :roles => [admin, worker])

empuxa = Company.create(:name => "empuxa", :description => "empuxa")
venture = Company.create(:name => "venture", :description => "venture")
code_it = Company.create(:name => "Code it", :description => "just code it")

Employee.create(:user => bob, :company => empuxa)
Employee.create(:user => bob, :company => venture)
Employee.create(:user => bob, :company => code_it)

Employee.create(:user => alice, :company => empuxa)

Employee.create(:user => andrew, :company => empuxa)
