# frozen_string_literal: true

require 'socket'

def server_start
  server = TCPServer.new(3000)
  loop do
    Thread.start(server.accept) do |client|
      client.puts "Hello! Time is #{Time.now}"
      client.close
    end
  end
end
