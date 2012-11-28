#!/usr/bin/env ruby

# Simple Command line client for quick testing of AllegroClient class.

require 'optparse'

require 'rumsztyk.rb'

# Usage function
def usage
  puts "USAGE:"
  puts "./rumsztyk_cmd.rb -k ALLEGRO_WEBAPI_KEY"
  puts "or"
  puts "./rumsztyk_cmd.rb --key ALLEGRO_WEBAPI_KEY"
end

# Options and arguments parsing
options = {}
optparse = OptionParser.new do |opts|
  
  # Display help
  opts.on('-h', '--help', 'Display help') do
    puts opts
  end
  
  # Display usage
  opts.on('-u', '--usage', 'Display script usage') do
    usage
  end
  
  # Execute tests
  opts.on('-k', '--key WEBAPI_KEY', 'Run tests with given Allegro.pl WEBAPI key') do |key|
    # TODO:
    # class definition
    client = AllegroClient.new(key)
  end
  
end

# Parse options and arguments, execute code or catch exception and show usage
begin  
  optparse.parse!
rescue
  usage
end
