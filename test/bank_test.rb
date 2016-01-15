require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/bank'

class BankTest < Minitest::Test

  def test_bank_initializes_with_name
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")

    assert_equal "JP Morgan Chase", chase.name
    assert_equal "Wells Fargo", wells_fargo.name
  end



end
