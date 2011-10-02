require 'rubygems'
require 'stomp'

host = ENV["STOMP_HOST"] ? ENV["STOMP_HOST"] : "localhost"
port = ENV["STOMP_PORT"] ? ENV["STOMP_PORT"].to_i : 61613

client = Stomp::Client.new("guest", "guest", host, port)
client.publish '/topic/x.y', 'first message'
client.publish '/topic/x.z', 'second message'
client.publish '/topic/x', 'third message'
