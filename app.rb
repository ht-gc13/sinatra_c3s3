require 'sinatra'
require 'csv'

get '/' do
  erb :index
end

get '/todo' do
  @todos = ['Order canapes', 'Confirm event details with attendees', 'Book band']

  erb :todo
end

get '/schedule' do
  @schedule = [ ['8pm',    'Doors open'],
                ['8.30pm', 'Champagne and canapes served'],
                ['9pm',    'Speech'],
                ['9.30pm', 'Painting unveiled'],
                ['9.40pm', 'Live band plays'] ]

  erb :schedule
end

get '/rsvps' do
  @rsvps = CSV.read('rsvps.csv')

  @acceptances = ['Alex French', 'Jessie White', 'Dylan Holmes', 'Harry Winters', 'Jo Denvers', 'Casey Durnham', 'Jamie Walters']
  @rejections  = ['Sam Jones', 'Jack Morris', 'Morgan Green']
  @acceptance_count = '7'
  @rejection_count  = '3'

  # TODO categorise rsvps into acceptances/rejections and count them


  erb :rsvps
end