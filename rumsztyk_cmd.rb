#!/usr/bin/env ruby

# Simple Command line client for quick testing of AllegroClient class.

require 'optparse'

require 'rumsztyk.rb'

# Usage function
def usage
  puts "USAGE:"
  puts "./rumsztyk_cmd.rb -e -k ALLEGRO_WEBAPI_KEY -l ALLEGRO_USERNAME -p ALLEGRO_PASSWORD -a ALLEGRO_ID"
  puts "or"
  puts "./rumsztyk_cmd.rb -execute --key ALLEGRO_WEBAPI_KEY --login ALLEGRO_USERNAME --password ALLEGRO_PASSWORD --allegro_id ALLEGRO_ID"
end

# Options and arguments parsing
options = {}
options[:username] = false
options[:password] = false
options[:allegro_id] = false
options[:key] = false
options[:execute] = false
options[:usage] = false
options[:help] = false

# Script variables
username = ''
password = ''
webkey = ''
allegro_id = ''
opts_ = ''

optparse = OptionParser.new do |opts|
  
  # Display help
  opts.on('-h', '--help', 'Display help') do
    opts_ = opts
    options[:help] = true
  end
  
  # Display usage
  opts.on('-u', '--usage', 'Display script usage') do
    options[:usage] = true
  end
  
  # Specify allegro username
  opts.on('-l', '--login USERNAME', 'Set allegro username') do |u|
    username = u
    options[:username] = true
  end
  
  # Specify allegro password
  opts.on('-p', '--password PASSWORD', 'Set allegro password') do |p|
    password = p
    options[:password] = true
  end
  
  # Specify allegro ID
  opts.on('-a', '--allegro_id ALLEGR_ID', 'Set allegro ID') do |a|
    allegro_id = a
    options[:allegro_id] = true
  end
  
  # Specify allegro webapi key
  opts.on('-k', '--key WEBAPI_KEY', 'Set allegro webapi key') do |key|
    webkey = key
    options[:key] = true
  end
  
  # Execute tests
  opts.on('-e', '--execute', 'Execute tests. Username, password, webapi key and allegro ID required.') do
    options[:execute] = true
  end
  
end

# Parse options and arguments
begin  
  optparse.parse!
rescue
  usage
end

# Execute tests
if options[:execute] and options[:username] and options[:password] and options[:allegro_id] and options[:key]
  client = AllegroClient.new(webkey, allegro_id, username, password)
elsif options[:help]
  puts opts_
else
  usage
end
