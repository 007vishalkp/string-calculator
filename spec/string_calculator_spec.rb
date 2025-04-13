require_relative '../lib/string_calculator'

RSpec.describe StringCalculator do
  describe '#add' do
    it 'returns 0 for an empty string' do
      calculator = StringCalculator.new
      expect(calculator.add("")).to eq(0)
    end

    it 'returns the number if only one number is passed' do
        calculator = StringCalculator.new
        expect(calculator.add("5")).to eq(5)
    end

    it 'returns the sum when two comma-separated numbers are passed' do
        calculator = StringCalculator.new
        expect(calculator.add("1,2")).to eq(3)
    end

  end
end