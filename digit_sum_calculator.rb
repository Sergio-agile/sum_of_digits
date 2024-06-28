class DigitSumCalculator

  def initialize(number)
    @number = number
  end

  def calculate_sum
    sum = sum_digits(@number)
    sum < 10 ? sum : self.class.calculate(sum)
  end

  def self.calculate(number)
    raise ArgumentError, 'Input must be an integer' if number.nil? || !number.is_a?(Integer)
    new(number).calculate_sum
  end

  private

  def sum_digits(number)
    number.to_s.chars.map(&:to_i).reduce(:+)
  end
end
