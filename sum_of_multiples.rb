class SumOfMultiples
  def initialize(*args)
    @numbers = *args
  end

  def to(upper_limit)
    non_unique_array = []
    (1..upper_limit - 1).each do |i|
      @numbers.each do |number|
        non_unique_array << i if (i % number).zero?
      end
    end
    non_unique_array.uniq
                    .sum
  end
end


