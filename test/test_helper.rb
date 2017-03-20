require 'simplecov'
SimpleCov.start

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'gandi'

unless ENV['GANDI_API_TEST_KEY']
  fail '

    Could not find environment variable $GANDI_API_TEST_KEY
    Please set it to the OT&E Key provided by Gandi. You can find
    it at https://www.gandi.net/admin/api_key.
    '
end

def connect
  Gandi::Session.new(ENV['GANDI_API_TEST_KEY'], env: :test)
end

require 'minitest/autorun'
