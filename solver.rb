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

  def reverse(word)
    raise ArgumentError, 'No word was passed' if word.nil?

    word.reverse
  end

  def fizzbuzz(number)
    raise ArgumentError, 'No argument was passed' if number.nil?

    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end
end
