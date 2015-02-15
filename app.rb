require 'sinatra'

@list = ['sample item']

get '/' do
	erb :index
end

post '/new' do
	@list.push params['item']
	redirect '/'
end
