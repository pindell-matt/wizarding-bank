
class Person
  attr_reader :name, :galleons

  def initialize(name, galleons)
    @name = name
    @galleons = galleons
    puts message
  end

  def message
    "#{name} has been created with #{galleons} galleons in cash."
  end

end
