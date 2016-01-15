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
    person2 = Person.new("Luna", 500)
    message1 = "Minerva has been created with 1000 galleons in cash."
    message2 = "Luna has been created with 500 galleons in cash."

    assert_equal message1, person1.message
    assert_equal message2, person2.message
  end

  

end
