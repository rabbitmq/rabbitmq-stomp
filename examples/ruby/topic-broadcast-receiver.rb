require 'rubygems'
require 'stomp'

host = ENV["STOMP_HOST"] ? ENV["STOMP_HOST"] : "localhost"
port = ENV["STOMP_PORT"] ? ENV["STOMP_PORT"].to_i : 61613

topic = ARGV[0] || 'x'
puts "Binding to /topic/#{topic}"

conn = Stomp::Connection.open('guest', 'guest', host, port)
conn.subscribe("/topic/#{topic}")
while mesg = conn.receive
  puts mesg.body
end
