class StringCalculator
    def self.add(numbers)
        numbers.gsub!('\n', ',')
        if numbers.empty?
            0
        else
            numbers.split(',').map(&:to_i).sum
        end
      end
  end