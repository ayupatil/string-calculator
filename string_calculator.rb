class StringCalculator
    def self.add(numbers)
        if numbers.empty?
            0
          elsif numbers.include?(',')
            numbers.split(',').map(&:to_i).sum
          else
            numbers.to_i
          end
      end
  end