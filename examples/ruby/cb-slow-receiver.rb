require 'rubygems'
require 'stomp'

host = ENV["STOMP_HOST"] ? ENV["STOMP_HOST"] : "localhost"
port = ENV["STOMP_PORT"] ? ENV["STOMP_PORT"].to_i : 61613

# Note: requires support for connect_headers hash in the STOMP gem's connection.rb
conn = Stomp::Connection.open('guest', 'guest', host, port, false, 5, {:prefetch => 1})
conn.subscribe('/queue/carl', {:ack => 'client'})
while mesg = conn.receive
  puts mesg.body
  puts 'Sleeping...'
  sleep 0.2
  puts 'Awake again. Acking.'
  conn.ack mesg.headers['message-id']
	break if mesg.body == "All Done!"
end
