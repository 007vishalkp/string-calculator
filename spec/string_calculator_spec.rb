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
    
    it 'returns the sum when multiple comma-separated numbers are passed' do
        calculator = StringCalculator.new
        expect(calculator.add("1,2,3")).to eq(6)
    end

    it 'supports newline as delimiter along with commas' do
        calculator = StringCalculator.new
        expect(calculator.add("1\n2,3")).to eq(6)
    end

    it 'supports custom single-character delimiters like //;\n1;2' do
        calculator = StringCalculator.new
        expect(calculator.add("//;\n1;2")).to eq(3)
    end

    it 'raises an exception for negative numbers' do
        calculator = StringCalculator.new
        expect { calculator.add("1,-2,3,-5") }.to raise_error("Negative numbers not allowed: -2, -5")
    end

    it 'ignores numbers greater than 1000' do
        calculator = StringCalculator.new
        expect(calculator.add("2,1001,6,1234")).to eq(8)
    end

    it 'supports custom delimiters of any length like //[***]\\n1***2***3' do
        calculator = StringCalculator.new
        expect(calculator.add("//[***]\n1***2***3")).to eq(6)
    end

  end
end