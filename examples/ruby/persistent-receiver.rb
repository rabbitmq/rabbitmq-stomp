require 'rubygems'
require 'stomp'

host = ENV["STOMP_HOST"] ? ENV["STOMP_HOST"] : "localhost"
port = ENV["STOMP_PORT"] ? ENV["STOMP_PORT"].to_i : 61613

conn = Stomp::Connection.open('guest', 'guest', host, port)
conn.subscribe('/queue/durable')

puts "Waiting for messages..."

while mesg = conn.receive
  puts mesg.body
	break if mesg.body == "All Done!"
end
