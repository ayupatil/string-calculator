class StringCalculator
    def self.add(numbers)
        delimiter = ','
        if numbers.start_with?('//[')
            match = numbers.match(/\/\/\[(.*?)\]/)
            if match
              delimiter = match[1]
              numbers = numbers.split('\n', 2).last
            end
        elsif numbers.start_with?('//')
            parts = numbers.split('\n', 2)
            delimiter = parts[0][2]
            numbers = parts.last
        end

        numbers.gsub!('\n', delimiter)
        nums = numbers.split(delimiter).map(&:to_i).select{ |n| n <= 1000 }
        negatives = nums.select(&:negative?)

        if negatives.any?
            raise "Negatives not allowed: #{negatives.join(',')}"
        end
        nums.sum
      end
  end