require './lib/person'

class Bank
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def message
    "#{name} has been created."
  end

  def open_account(person)
    "An account has been opened for #{person.name} with #{name}."
  end

  def deposit(person, amount)
    person.galleons = person.galleons - amount
    name = @name.split[2]
    "#{amount} galleons have been deposited into #{person.name}'s #{name} account. Balance: #{amount} Cash: #{person.galleons}"
  end

end
