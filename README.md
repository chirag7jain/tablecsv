# TableCSV

The gem allows you convert html table to csv. Just pass your html doc 
containing a "single table" and it will convert the table content to a csv string

To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'TableCSV'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install TableCSV

## Usage

```ruby

sample = "<html><head></head><body><table><tbody><tr><th>Designer</th>"\
      "<th>Coupon</th></tr><tr><td>Trendz</td><td>188517EE</td></tr><tr><td>"\
      "Trendz1</td><td>1F74A64D</td></tr></table></body></html>"
t = TableCSV.new
t.attach(sample)
t.content

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/chirag7jain/TableCSV/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
