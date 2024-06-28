require_relative '../digit_sum_calculator'

RSpec.describe DigitSumCalculator do
  describe '.calculate' do
    it 'returns the correct sum for single digit number' do
      expect(DigitSumCalculator.calculate(5)).to eq(5)
    end

    it 'returns the correct sum for 16' do
      expect(DigitSumCalculator.calculate(16)).to eq(7)
    end

    it 'returns the correct sum for 942' do
      expect(DigitSumCalculator.calculate(942)).to eq(6)
    end

    it 'returns the correct sum for 9999999999' do
      expect(DigitSumCalculator.calculate(9999999999)).to eq(9)
    end

    it 'returns the correct sum for 12345' do
      expect(DigitSumCalculator.calculate(12345)).to eq(6)
    end

    it 'returns the correct sum for 0' do
      expect(DigitSumCalculator.calculate(0)).to eq(0)
    end

    it 'returns the correct sum for negative number -16' do
      expect(DigitSumCalculator.calculate(-16)).to eq(7)
    end

    it 'returns the correct sum for a large number' do
      expect(DigitSumCalculator.calculate(12345678901234567890)).to eq(9)
    end

    it 'raises an error for nil input' do
      expect { DigitSumCalculator.calculate(nil) }.to raise_error(ArgumentError)
    end

    it 'raises an error when no arguent is passed' do
      expect { DigitSumCalculator.calculate }.to raise_error(ArgumentError, /wrong number of arguments/)
    end

    it 'raises an error for string input' do
      expect { DigitSumCalculator.calculate('this is a string') }.to raise_error(ArgumentError)
    end

    it 'raises an error for float input' do
      expect { DigitSumCalculator.calculate(123.45) }.to raise_error(ArgumentError)
    end

    it 'raises an error for array input' do
      expect { DigitSumCalculator.calculate([1,2,3]) }.to raise_error(ArgumentError)
    end

    it 'raises an error for hash input' do
      expect { DigitSumCalculator.calculate({ first: 1, second: 2 }) }.to raise_error(ArgumentError)
    end
  end
end
