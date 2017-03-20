require 'test_helper'
require 'pry'
class SessionTest < Minitest::Test

  def setup
    @api = connect
  end

  def test_connecting
    refute_nil @api
  end

  def test_methods
    assert_equal @api.list_methods, Gandi::VALID_METHODS
  end

  def test_account
    refute_nil @api.account.info['handle']
  end

  def test_remote_hostname
    assert_equal @api.server.instance_variable_get('@host'), 'rpc.ote.gandi.net'
  end

  def test_encryption
    assert @api.server.instance_variable_get '@use_ssl'
  end

end
