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
    "An account has been opened for #{person.name} with #{bank.name}."
  end

end
