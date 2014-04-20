require 'optparse'
require 'parseconfig'
require_relative 'web_server/lib/tts_server'


puts "Parsing options...:"
cli_options = TTSServer.parse_arguments
options = TTSServer.parse_configfile(cli_options["config_file"]).merge(cli_options)
puts "End configuration:"
puts options

puts "Starting web server"
TTSServer::HTTPServer.new(5555).start

puts "Starting sip server"

