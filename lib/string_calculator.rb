class StringCalculator
    def add(input)
        return 0 if input.empty?
    
        delimiter = /,|\n/
        if input.start_with?("//")
          delimiter_part, input = input.split("\n", 2)
          delimiter = Regexp.escape(delimiter_part[2])
        end
    
        numbers = input.split(/#{delimiter}/).map(&:to_i)
        
        negatives = numbers.select { |n| n < 0 }
        if negatives.any?
          raise "Negative numbers not allowed: #{negatives.join(', ')}"
        end
    
        numbers.sum
    end
end