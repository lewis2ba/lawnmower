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

technician3 = Technician.create(name:'David Bowie')
technician3.save!

customer1 = Customer.create(name:'Brendan Lewis', address:'1234 Fake Street', lawn_size:100, technician_id: technician1.id)
customer1.save!

customer2 = Customer.create(name:'George Bush', address:'9999 Art Street', lawn_size:200, technician_id: technician1.id)
customer2.save!

customer3 = Customer.create(name:'Barack Obama', address:'9321 Main Street', lawn_size:300, technician_id: technician1.id)
customer3.save!

customer4 = Customer.create(name:'Bill Clinton', address:'3848 Middle Street', lawn_size:400, technician_id: technician2.id)
customer4.save!

customer5 = Customer.create(name:'Jimmy Carter', address:'2922 Lee Street', lawn_size:500, technician_id: technician2.id)
customer5.save!

customer6 = Customer.create(name:'Ronald Reagan', address:'5134 Fleet Street', lawn_size:600, technician_id: technician2.id)
customer6.save!

customer7 = Customer.create(name:'George Washington', address:'9202 Spark Ave', lawn_size:700, technician_id: technician2.id)
customer7.save!

customer8 = Customer.create(name:'James Madison', address:'9429 Second Street', lawn_size:800, technician_id: technician2.id)
customer8.save!

mowing1 = Mowing.create(technician_id:technician1.id, customer_id:customer1.id, mow_date:"2016/3/1")
mowing1.save!

mowing2 = Mowing.create(technician_id:technician2.id, customer_id:customer2.id, mow_date:"2016/3/2")
mowing2.save!

mowing3 = Mowing.create(technician_id:technician2.id, customer_id:customer3.id, mow_date:"2016/3/3")
mowing3.save!

mowing4 = Mowing.create(technician_id:technician2.id, customer_id:customer4.id, mow_date:"2016/3/4")
mowing4.save!

mowing5 = Mowing.create(technician_id:technician3.id, customer_id:customer5.id, mow_date:"2016/3/5")
mowing5.save!
