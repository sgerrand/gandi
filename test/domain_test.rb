require 'test_helper'
class DomainTest < Minitest::Test

  def setup
    @api = connect
    random = (0..10).map { rand(10) }.join
    @domain = @api.domain.create(
      "my-test-#{random}.tv",
      owner: @api.account.info['handle'],
      admin: @api.account.info['handle'],
      tech: @api.account.info['handle'],
      bill: @api.account.info['handle'],
      duration: 1
    )
  end

  def test_creating
    refute_nil @domain
  end

end
