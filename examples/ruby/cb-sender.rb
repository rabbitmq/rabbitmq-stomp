require 'rubygems'
require 'stomp'

host = ENV["STOMP_HOST"] ? ENV["STOMP_HOST"] : "localhost"
port = ENV["STOMP_PORT"] ? ENV["STOMP_PORT"].to_i : 61613

client = Stomp::Client.new("guest", "guest", host, port)
10000.times { |i| client.publish '/queue/carl', "Test Message number #{i}"}
client.publish '/queue/carl', "All Done!"
