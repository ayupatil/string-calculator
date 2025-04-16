class StringCalculator
    def self.add(numbers)
        delimiter = ','
        if numbers.start_with?('//')
            parts = numbers.split('\n', 2)
            delimiter = parts[0][2]
            numbers = parts[1]
        end

        numbers.gsub!('\n', delimiter)

        if numbers.empty?
            0
        else
            numbers.split(delimiter).map(&:to_i).sum
        end
      end
  end