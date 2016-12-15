require 'pg'
require 'active_record'

ActiveRecord::Base.establish_connection(
	:adapter => "postgresql",
	:database => "todos_db"
)

if defined? Sinatra
	after do
		ActiveRecord::Base.connection.close
	end
end