# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Technician.destroy_all
Customer.destroy_all
Mowing.destroy_all
Invoice.destroy_all

technician1 = Technician.create(name:'Art Garfunklel')
technician1.save!

technician2 = Technician.create(name:'John Legend')
technician2.save!

customer1 = Customer.create(name:'Brendan Lewis', address:'1234 Fake Street', lawn_size:100, technician_id: technician1.id)
customer1.save!

customer2 = Customer.create(name:'John Lewis', address:'9999 Art Street', lawn_size:200, technician_id: technician1.id)
customer2.save!

customer3 = Customer.create(name:'Frank Lewis', address:'9321 Main Street', lawn_size:300, technician_id: technician1.id)
customer3.save!

customer4 = Customer.create(name:'Liam Lewis', address:'3848 Middle Street', lawn_size:400, technician_id: technician2.id)
customer4.save!

customer5 = Customer.create(name:'George Lewis', address:'2922 Lee Street', lawn_size:500, technician_id: technician2.id)
customer5.save!

mowing1 = Mowing.create(technician_id:technician1.id, customer_id:customer1.id, mow_date:"2016/5/5")
mowing1.save!

mowing2 = Mowing.create(technician_id:technician2.id, customer_id:customer2.id, mow_date:"2016/4/4")
mowing2.save!

mowing3 = Mowing.create(technician_id:technician2.id, customer_id:customer3.id, mow_date:"2016/6/6")
mowing3.save!

invoice1 = Invoice.create(mowing_id: mowing1.id, cost: 100)
