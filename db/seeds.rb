# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unless Ciclo.any?
	Ciclo.create!(:id => 1, :nombre => 'Anual')
	Ciclo.create!(:id => 2, :nombre => 'Verano')
	Ciclo.create!(:id => 3, :nombre => 'Invierno')
end