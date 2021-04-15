# MzamaPalindrome

`mzama_palindrome` is a sample Ruby gem created as part of the [*Learn Enough Ruby to Be Dangerous*](https://www.learnenough.com/ruby-tutorial) by Michael Hartl. It adds a Module to the string and interger class to detect if those objects are palindromes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mzama_palindrome'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install mzama_palindrome

## Usage

`mzama_palindrome` adds a `palindrome?` method to the `String` and `Integer` classes, and can be used as follows:

```
$ irb
>> require 'mzama_palindrome'
>> "honey badger".palindrome?
=> false
>> "deified".palindrome?
=> true
>> phrase = "Able was I, ere I saw Elba."
>> phrase.palindrome?
=> true
>> 121.palindrome?
=> true
>> i = 123
>> i.palindrome?
=> false

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mzama/mzama_palindrome.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
