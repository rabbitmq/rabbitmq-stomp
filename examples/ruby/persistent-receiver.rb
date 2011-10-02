require 'rubygems'
require 'stomp'

host = ENV["STOMP_HOST"] ? ENV["STOMP_HOST"] : "localhost"
port = ENV["STOMP_PORT"] ? ENV["STOMP_PORT"].to_i : 61613

conn = Stomp::Connection.open('guest', 'guest', host, port)
conn.subscribe('/queue/durable', :'auto-delete' => false, :durable => true)

puts "Waiting for messages..."

while mesg = conn.receive
  puts mesg.body
end
