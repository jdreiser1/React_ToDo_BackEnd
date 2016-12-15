require 'sinatra/reloader'
require 'sinatra'
require 'active_record'
require 'sinatra/cross_origin'

require_relative 'db/connection'
require_relative './models/todo'

configure do 
	enable :cross_origin
end
get '/' do
	@todos = Todo.all
	content_type :json
	@todos.to_json
end

post '/todos' do 
	@todo = Todo.create(title: params[:title], body: params[:body])
	@todos.to_json
end