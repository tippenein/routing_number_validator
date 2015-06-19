# RoutingNumberValidator

Rails 3 and 4 Bank Routing Number validator

This gem is intended to be a minimal application of validations provided in
larger libraries (see `ActiveMerchant`) if a more minimal implementation is
intended.

Use this gem as if it was just another ActiveModel validator (because it is)

```ruby
class MyModel < ActiveRecord
  validates :my_routing_number, :routing_number => true
end

billing_info = MyModel.new(invalid_routing_number_params)
billing_info.valid? => false
```

[![Build Status](https://secure.travis-ci.org/tippenein/routing_number_validator.png)](http://travis-ci.org/tippenein/routing_number_validator)

## Usage

Add this line to your application's Gemfile:

```ruby
gem 'routing_number_validator'
```

then run:

    $ bundle

Then add the following to your model:

```ruby
validates :my_routing_number, :routing_number => true
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/routing_number_validator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
