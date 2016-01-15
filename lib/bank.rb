class Bank
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def message
    "#{name} has been created."
  end

end
