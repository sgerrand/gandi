require 'hashie'
require 'xmlrpc/client'
require 'gandi/version'
require 'gandi/session'
require 'gandi/errors'
require 'gandi/fault_code'

module Gandi
   
  ENDPOINT = {
    test: 'https://rpc.ote.gandi.net/xmlrpc/',
    production: 'https://rpc.gandi.net/xmlrpc/'
  }.freeze

  def self.silence_warnings
    old_verbose = $VERBOSE
    $VERBOSE = nil
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
