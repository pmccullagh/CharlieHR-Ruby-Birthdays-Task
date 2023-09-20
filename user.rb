require 'date'

class User
  attr_reader :name, :date_of_birth

  def initialize(name, date_of_birth)
    @name = name
    @date_of_birth = date_of_birth
  end

  # Returns true if it is the user's birthday today
  def birthday?
    # ...
  end

  # Returns an Integer representing the user's current age
  def age
    # ...
  end

  # Returns a Date object for the user's current upcoming birthday
  #
  # Note: if their birthday is today, their next birthday is next year.
  #
  def next_birthday
    #...
  end
end
