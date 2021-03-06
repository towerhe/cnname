# Cnname

[![Build Status](https://secure.travis-ci.org/towerhe/cnname.png?branch=develop)](http://travis-ci.org/towerhe/cnname)
[![Dependency Status](https://gemnasium.com/towerhe/cnname.png)](https://gemnasium.com/towerhe/cnname)
[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/towerhe/cnname)

cnname provides support to handle the names of Chinese.

## Installation

Add this line to your application's Gemfile:

    gem 'cnname'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cnname

## Usage

```ruby
name = Cnname::Name.new('张三')
puts name.first_name              # => 三
puts name.last_name               # => 张
```

Check out the specs
[https://github.com/towerhe/cnname/blob/master/spec/cnname/name_spec.rb](https://github.com/towerhe/cnname/blob/master/spec/cnname/name_spec.rb)
for detail.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
