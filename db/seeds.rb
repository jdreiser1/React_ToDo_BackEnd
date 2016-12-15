require 'active_record'
require 'pg'

require_relative 'connection'
require_relative '../models/todo'

Todo.destroy_all

Todo.create([
	{ title: "Todo1", body: "Bless me"},
	{ title: "Todo1", body: "Bless me"},
	{ title: "Todo1", body: "Bless me"},
	{ title: "Todo1", body: "Bless me"}
	])
