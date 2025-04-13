class StringCalculator
    def add(input)
        return 0 if input.empty?
    
        delimiter_pattern = /,|\n/
    
        if input.start_with?("//")
          delimiter_section, input = input.split("\n", 2)
    
          if delimiter_section.include?("[")
            custom_delimiters = delimiter_section.scan(/\[(.*?)\]/).flatten
            pattern_string = custom_delimiters.map { |d| Regexp.escape(d) }.join("|")
            delimiter_pattern = Regexp.new(pattern_string)
          else
            delimiter_pattern = Regexp.new(Regexp.escape(delimiter_section[2]))
          end
        end
    
        numbers = input.split(delimiter_pattern).map(&:to_i)
    
        negatives = numbers.select { |n| n < 0 }
        raise "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
    
        numbers.reject { |n| n > 1000 }.sum
    end
end