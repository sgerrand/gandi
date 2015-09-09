# Gandi

This is a Ruby interface to the [Gandi](http://gandi.net) XML-RPC API.

## Installation

Add to your `Gemfile`:

```ruby
gem 'gandi'
```

Then `bundle install`.

Otherwise

```bash
gem install gandi
```

## Basic Usage

Every call to the Gandi API is authenticated so sessions are required to have a unique API key. If you don’t have it already, you can retrieve your API key from your Gandi account page.

```ruby
require 'gandi'

api = Gandi::Session.new("24-character API key") # Endpoint: https://rpc.gandi.net/xmlrpc/

api.domain.list
api.domain.info('mydomain.com')
api.catalog.list(product: {type: 'domains'})
...
```

### Operational Test and Evaluation (OT&E) Endpoint

Alongside the production API, Gandi provides an Operational Test and Evaluation (OT&E) system.

```ruby
require 'gandi'

api = Gandi::Session.new("24-character API key", env: :test)

api.domain.list
...
```

For further information see the Gandi API documention at http://doc.rpc.gandi.net/

### Fault codes

When the XMLRPC call returns an error, an exception is raised.
`Gandi::DataError` is raised if the error is due to faulty user input and `Gandi::ServerError` is raised if it is caused by a server-side internal error.

All the possible fault codes can be found in [Gandi API manual](http://doc.rpc.gandi.net/errors/fault_codes.html).

Both exceptions contain a `Gandi::FaultCode` object which stores the object name and the cause of the error:
```ruby
fault_code = Gandi::FaultCode.parse(505237)
# => #<Gandi::FaultCode::Data:...>
fault_code.object
# => :object_fqdn
fault_code.cause
# => :cause_badparameter
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

