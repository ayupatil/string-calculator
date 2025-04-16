class StringCalculator
    def self.add(numbers)
        return 0 if numbers.empty?

        delimiter = ','
        if numbers.start_with?('//[')
            parts = numbers.split('\n', 2)
            delimiters = parts.first.gsub!(/\/|\[/, '').split(']')
            numbers = split_multiple(parts.last, delimiters)
        elsif numbers.start_with?('//')
            parts = numbers.split('\n', 2)
            delimiter = parts[0][2]
            numbers = parts.last.split(delimiter)
        else
            numbers.gsub!('\n', delimiter)
            numbers = numbers.split(delimiter)
        end

        nums = numbers.map(&:to_i).select{ |n| n <= 1000 }
        negatives = nums.select(&:negative?)

        if negatives.any?
            raise "Negatives not allowed: #{negatives.join(',')}"
        end
        nums.sum
      end

      private

      def self.split_multiple(numbers, delimiters)
        result = [numbers]
        delimiters.each do |delimiter|
          new_result = []
          result.each do |num|
            new_result.concat(num.split(delimiter))
          end
          result = new_result
        end
        result
      end
  end