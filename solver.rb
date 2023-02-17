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

  def fizzbuzz(n)
    raise ArgumentError, 'No argument was passed' if n.nil?

    if (n % 3).zero? && (n % 5).zero?
      'fizzbuzz'
    elsif (n % 3).zero?
      'fizz'
    elsif (n % 5).zero?
      'buzz'
    else
      n.to_s
    end
  end
end
