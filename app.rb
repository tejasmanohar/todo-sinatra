require 'sinatra'

@@list = []

get '/' do
	erb :index
end

post '/new' do
	@@list.push params['item']
	redirect '/'
end
