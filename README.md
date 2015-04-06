# FilenameType

Simple filename manipulation in Ruby.  The `File` module feels too much like
the `Java.Math` namespace.  Let's make it more OOP-like.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'filename_type'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install filename_type

## Usage

```ruby
"~/.bashrc".to_filename # "~/.bashrc"
"~/.bashrc".to_filename! # "/Users/ndejay/.bashrc"
f = "~/.bashrc".to_filename! # "/Users/ndejay/.bashrc"
f.exists? # true
f.file? # true
f.directory? # false
f.symlink? # true
f.target # ".dotfiles/link/.bashrc"
f.realpath # "/Users/ndejay/.dotfiles/link/.bashrc"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ndejay/filename_type. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

