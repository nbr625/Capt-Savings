# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'json'



records = JSON.parse(File.read('db/jsondata/cruisedata.json'))
records.each do |record|
  Cruise.create!(record)
end


records = JSON.parse(File.read('db/jsondata/sailingdata.json'))
records.each do |record|
  Sailing.create!(record)
end


records = JSON.parse(File.read('db/jsondata/sailing_optiondata.json'))
records.each do |record|
  SailingOption.create!(record)
end