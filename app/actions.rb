require 'faker'
require 'json'
CONTACTS = []

numbers = Random.rand(2)

100.times do
  name = Faker::Name.name
  CONTACTS << {
  name: name,
  email: Faker::Internet.email(name)
}
end


get '/' do
  erb :index
end

get '/contacts' do
  # @contacts = Card.all
  # @contacts.to_json
  CONTACTS.to_json
end

post '/contacts/new' do
  # request.body.rewind
  # contact = JSON.parse request.body.read

  CONTACTS << {name: params[:name], email: params[:email]}
  CONTACTS.to_json
end

delete '/contacts/:id' do
  # do something
end

put '/contacts/:id' do
  # do something
end
