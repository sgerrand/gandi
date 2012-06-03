# Add the directory containing this file to the start of the load path if it
# isn't there already.
$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'hashie'
require 'xmlrpc/client'
require 'gandi/session'
require 'gandi/errors'

module Gandi
  VERSION = '2.0.5'
  
  def self.silence_warnings
    old_verbose, $VERBOSE = $VERBOSE, nil
    yield
  ensure
    $VERBOSE = old_verbose
  end
  
  silence_warnings do
    # gandi sometimes return <nil/> values so let's accept them to prevent exceptions
    XMLRPC::Config::ENABLE_NIL_PARSER = true
    XMLRPC::Config::ENABLE_NIL_CREATE = true
  end

end
