require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/bank'
require './lib/person'

class BankTest < Minitest::Test

  def test_bank_initializes_with_name
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")

    assert_equal "JP Morgan Chase", chase.name
    assert_equal "Wells Fargo", wells_fargo.name
  end

  def test_bank_initializes_with_message
    chase = Bank.new("JP Morgan Chase")
    chase_message = "JP Morgan Chase has been created."
    wells_fargo = Bank.new("Wells Fargo")
    wells_message = "Wells Fargo has been created."

    assert_equal chase_message, chase.message
    assert_equal wells_message, wells_fargo.message
  end

  def test_can_open_account
    chase = Bank.new("JP Morgan Chase")
    person1 = Person.new("Minerva", 1000)
    chase.open_account(person1)
    message = "An account has been opened for Minerva with JP Chase."

    assert_equal message, chase.open_account
  end

end
