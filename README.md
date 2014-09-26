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
api.domain.zone.clone_zone('zone_id') # instead of api.domain.zone.clone
api.domain.zone.version.new_version('zone_id') # instead of domain.zone.version.new
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

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

