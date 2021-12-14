# rh-activerecord-diff

Simple ActiveRecord diff functionality.

This gem was created to take over and maintain [activerecord-diff](https://rubygems.org/gems/activerecord-diff).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rh-activerecord-diff'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rh-activerecord-diff

## Usage

```ruby
require 'active_record/diff'

class User < ActiveRecord::Base
  include ActiveRecord::Diff
end

alice = User.create(:name => 'alice', :email_address => 'alice@example.org')

bob = User.create(:name => 'bob', :email_address => 'bob@example.org')

alice.diff?(bob)  # => true

alice.diff(bob)  # => {:name => ['alice', 'bob'], :email_address => ['alice@example.org', 'bob@example.org']}

alice.diff({:name => 'eve'})  # => {:name => ['alice', 'eve']}
```

## Configuration

By default, ActiveRecord::Base.content_columns is used to decide which attributes
to compare. You can include or exclude attributes from this as follows:

```ruby
class User < ActiveRecord::Base
  diff :include => [:id], :exclude => [:password_hash]
end
```

Alternatively, you can specify exactly which columns to compare:

```ruby
class User < ActiveRecord::Base
  diff :id, :name, :email_address
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hayashima/rh-activerecord-diff. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/hayashima/rh-activerecord-diff/blob/main/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/).

## Code of Conduct

Everyone interacting in the rh-activerecord-diff project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/hayashima/rh-activerecord-diff/blob/main/CODE_OF_CONDUCT.md).
