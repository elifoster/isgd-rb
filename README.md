# isgd-rb
[![Build Status](https://travis-ci.org/elifoster/isgd-rb.svg?branch=master)](https://travis-ci.org/elifoster/isgd-rb)

A Ruby wrapper for the isgd API utilizing HTTPClient

## Installation
### Ruby Gems
``` shell
$ gem install isgd
```

### Bundler
Add this line to your Gemfile:
``` ruby
gem('isgd')
```

And then execute:
``` shell
$ bundle install
```

## Standard usage
``` ruby
require 'isgd'

# Standard URL shortening
ISGD.shorten('http://google.com')
# => "http://is.gd/OwycZW"

# Standard URL lookups
ISGD.lookup('http://is.gd/OwycZW')
# => "http://google.com"

# Error messages too!
ISGD.shorten('http://google')
# => "Please enter a valid URL to shorten"
ISGD.lookup('http://')
# => "Sorry, we couldn't find the shortened URL you requested. The link you followed may be invalid, or an evil wizard may have cast a spell on our servers."
```

## Documentation
[RubyDoc](http://rubydoc.info/gems/isgd) or the in-code documentation.
