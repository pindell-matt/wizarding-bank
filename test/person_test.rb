require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/person'

class PersonTest < Minitest::Test

  def test_person_initializes_with_name
    person1 = Person.new("Minerva", 1000)

    assert_equal "Minerva", person1.name
  end

  def test_person_initializes_with_message
    person1 = Person.new("Minerva", 1000)
    message = "Minerva has been created with 1000 galleons in cash."

    assert_equal message, person1.message
  end
end

#
# person1 = Person.new("Minerva", 1000)
#
# Minerva has been created with 1000 galleons in cash.
#
# person2 = Person.new("Luna", 500)
#
# Luna has been created with 500 galleons in cash.
