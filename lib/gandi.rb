# Add the directory containing this file to the start of the load path if it
# isn't there already.
$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'hashie'
require 'xmlrpc/client'
require 'gandi/session'
require 'gandi/errors'

module Gandi
  VERSION = '2.0.0'
end
