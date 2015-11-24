require 'rubygems'
require 'bundler/setup'

require 'active_support/all'

require 'active_record'
require 'faker'

require './app/models/contact'
require './app/models/number'

require './config/environment'
require './config/database'

100.times do
  name = Faker::Name.name
  Contact.create(
  name: name,
  email: Faker::Internet.email(name)
  )
end

100.times do
  Number.create(
  number: Faker::PhoneNumber.phone_number,
  contact_id: Random.rand(100)
  )
end
