# frozen_string_literal: true

class Person
  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name  = last_name
    @age        = age
  end

  def full_name
    puts @first_name + ' ' + @last_name
  end

  def old
    if @age > 60
      full_name.to_s + '- old'
    elsif @age < 40 && @age > 21
      full_name.to_s + '- adult'
    else
      full_name.to_s + '- young'
   end
  end
end
