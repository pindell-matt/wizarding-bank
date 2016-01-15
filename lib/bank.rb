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
    denied = "#{person.name} does not have enough cash to perform this deposit."
    return denied if amount > person.galleons
    person.galleons = person.galleons - amount
    name = @name.split[2]
    "#{amount} galleons have been deposited into #{person.name}'s #{name} account. Balance: #{amount} Cash: #{person.galleons}"
  end

  def withdrawal(person, amount)
    # denied = "insufficient funds"
    # return denied if amount < person.galleons
    person.galleons = person.galleons + amount
    name = @name.split[2]
    "#{person.name} has withdrawn #{amount} galleons. Balance: #{person.galleons}"
  end

end
