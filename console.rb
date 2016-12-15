require 'pry'
require 'active_record'

require_relative "db/connection"

require_relative "models/todo"


puts "*" * 50

binding.pry

puts "ignore this line, it's just here so the binding.pry above works"