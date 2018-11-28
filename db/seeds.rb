# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Transaction.delete_all

Transaction.create([{ detail: 'Test Trans:1', amount: 500, approve: true, account_id: 1 }])
Transaction.create([{ detail: 'Test Trans:2', amount: 100, approve: true, account_id: 1 }])
Transaction.create([{ detail: 'Test Trans:3', amount: 50, approve: true, account_id: 1 }])
Transaction.create([{ detail: 'Test Trans:4', amount: 10, approve: true, account_id: 2 }])
Transaction.create([{ detail: 'Test Trans:5', amount: 1000, approve: true, account_id: 2 }])
