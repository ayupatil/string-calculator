class StringCalculator
    def self.add(numbers)
        delimiter = ','
        if numbers.start_with?('//')
            parts = numbers.split('\n', 2)
            delimiter = parts[0][2]
            numbers = parts[1]
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