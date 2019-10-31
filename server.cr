require "http/server"

server = HTTP::Server.new do |context|
  context.response.content_type = "text/plain"
  context.response.print "Test\n"
end

ENV["PORT"] ||= "0"
address = server.bind_tcp ENV["PORT"].to_i
puts "Listening on http://#{address}"
server.listen
