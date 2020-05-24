# mini_decorator

[![Gem Version](https://badge.fury.io/rb/mini_decorator.svg)](https://badge.fury.io/rb/mini_decorator)

Minimal decoration of Ruby objects using a `decorate` method.
The idea is to create the thinnest possible layer of abstraction between presentational methods and 'work' methods.
I was inspired by gems such as [Draper](https://github.com/drapergem/draper), but felt like they were doing too much.

# Installation

Run `gem install mini_decorator` or add `mini_decorator` to your Gemfile.

```ruby
gem 'mini_decorator'
```

# Usage

```ruby
require 'mini_decorator'

#
# This is where our presentational methods live
#
module PersonDecorator
  extend self
  def name(person)
    "#{person.first_name} #{person.last_name}"
  end
end

#
# Imagine that this is an ActiveRecord model or something...
#
class Person
  include MiniDecorator.new(PersonDecorator)

  def first_name
    'John'
  end

  def last_name
    'Smith'
  end
end

person = Person.new
person.decorate(:name)
# => "John Smith"
```

# License

MIT
