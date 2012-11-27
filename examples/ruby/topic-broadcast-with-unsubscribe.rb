require 'rubygems'
require 'stomp' # this is a gem

host = ENV["STOMP_HOST"] ? ENV["STOMP_HOST"] : "localhost"
port = ENV["STOMP_PORT"] ? ENV["STOMP_PORT"].to_i : 61613

conn = Stomp::Connection.open('guest', 'guest', host, port)
puts "Subscribing to /topic/x"
conn.subscribe('/topic/x')
puts 'Receiving...'
mesg = conn.receive
puts mesg.body
puts "Unsubscribing from /topic/x"
conn.unsubscribe('/topic/x')
puts 'Sleeping 5 seconds...'
sleep 5
