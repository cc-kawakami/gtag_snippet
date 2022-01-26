# gtag_snippet

gtag_snippet provides a Google Analytics gtag.js snippet.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gtag_snippet', github: "cc-kawakami/gtag_snippet"
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install https://github.com/cc-kawakami/gtag_snippet

## Usage

```bash
export GA_PROPERTY_ID=UA-1234567-8
```

```ruby
include GtagSnippet::Helper
```

```html
<head>
    <%= gtag_snippet %>
<!-- ... -->
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

