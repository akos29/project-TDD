# frozen_string_literal: true

class Solver
  def factorial(number: 0)
    raise 'Number cannot be less than zero.' if number.negative?

    counter = 1
    fact = 1
    while counter <= number
      fact *= counter
      counter += 1
    end
    fact
  end

end
