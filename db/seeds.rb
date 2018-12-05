# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Transaction.delete_all
Account.delete_all
# User.delete_all
#

Account.create([{ account_type: 'Checking', balance: 100_000, user_id: 4 }])
Account.create([{ account_type: 'Checking', balance: 100_000, user_id: 5 }])

Transaction.create([{ detail: 'Test Trans:1', amount: 500, approve: true, account_id: 5 }])
Transaction.create([{ detail: 'Test Trans:2', amount: 100, approve: true, account_id: 5 }])
Transaction.create([{ detail: 'Test Trans:3', amount: 50, approve: true, account_id: 5 }])
Transaction.create([{ detail: 'Test Trans:4', amount: 10, approve: true, account_id: 5 }])
Transaction.create([{ detail: 'Test Trans:5', amount: 1000, approve: true, account_id: 5 }])

Transaction.create([{ detail: 'Test Trans:1', amount: 100, approve: true, account_id: 6 }])
Transaction.create([{ detail: 'Test Trans:2', amount: 200, approve: true, account_id: 6 }])
Transaction.create([{ detail: 'Test Trans:3', amount: 300, approve: true, account_id: 6 }])
Transaction.create([{ detail: 'Test Trans:4', amount: 400, approve: true, account_id: 6 }])
Transaction.create([{ detail: 'Test Trans:5', amount: 500, approve: true, account_id: 6 }])
