class StringCalculator
    def add(input)
        return 0 if input.empty?
        return input.to_i unless input.include?(',')
    
        numbers = input.split(',').map(&:to_i)
        numbers.sum
    end
end