
class Person
  attr_reader :name
  attr_accessor :galleons, :balance

  def initialize(name, galleons)
    @name = name
    @galleons = galleons
    @balance = 0
    puts message
  end

  def message
    "#{name} has been created with #{galleons} galleons in cash."
  end

end
