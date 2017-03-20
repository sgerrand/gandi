require 'test_helper'

class ContactTest < Minitest::Test

  def setup
    @api = connect
  end

  def test_creating
    contact = @api.contact.create(
      type: 0,
      given: 'Gottkanler',
      family: 'Schulz',
      streetaddr: 'Lausitzer Str. 25',
      zip: '10999',
      city: 'Berlin',
      country: 'DE',
      phone: '+49 151 23563201',
      password: '********',
      email: 'gottkanzler@test.com'
    )

    refute_nil contact
  end

end
