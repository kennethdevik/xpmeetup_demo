require 'sinatra'
require 'sinatra/activerecord'
require './members'

get '/' do
  'Hello world!'
end

post '/member/add' do
  member = Members.new(params)

  if member.save
    "Added #{member.name} with e-mail #{member.email} and id #{member.id}"
  else
    "Adding failed"
  end
end
