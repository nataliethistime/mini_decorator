require 'minitest/autorun'
require 'date'
require 'mini_decorator'

require_relative 'fixtures/person'

class TestMiniDecorator < Minitest::Test
  def test_name
    person = Person.new(first_name: 'Foo', last_name: 'Bar')
    assert_equal 'Foo', person.first_name
    assert_equal 'Bar', person.last_name
    assert_equal 'Foo Bar', person.decorate(:name)
  end

  def test_birthday
    person = Person.new(birthday: DateTime.parse('3rd Feb 2001 04:05:06+03:30'))
    assert_equal '03/02/2001', person.decorate(:birthday)
  end
end
