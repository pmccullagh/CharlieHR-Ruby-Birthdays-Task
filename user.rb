require 'date'

class User
  attr_reader :name, :date_of_birth

  def initialize(name, date_of_birth)
    @name = name
    @date_of_birth = date_of_birth
  end

  # Returns true if it is the user's birthday today
  def birthday?
    if (@date_of_birth.day == Date.today.day) && (@date_of_birth.month == Date.today.month)
      'true'
    else
      'false'
    end
  end

  # Returns an Integer representing the user's current age
  def age
    if @date_of_birth.month < Date.today.month || (@date_of_birth.month == Date.today.month && @date_of_birth.day <= Date.today.day)
        Date.today.year - @date_of_birth.year
    else
      (Date.today.year - @date_of_birth.year) - 1
    end
  end

  # Returns a Date object for the user's current upcoming birthday
  #
  # Note: if their birthday is today, their next birthday is next year.
  #
  def next_birthday
    if @date_of_birth.month < Date.today.month || (@date_of_birth.month == Date.today.month && @date_of_birth.day <= Date.today.day)
      Date.new(Date.today.year, @date_of_birth.month, @date_of_birth.day).next_year
    else
      Date.new(Date.today.year, @date_of_birth.month, @date_of_birth.day)
    end
  end
end
