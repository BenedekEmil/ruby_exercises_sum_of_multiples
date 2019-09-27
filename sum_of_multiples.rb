class SumOfMultiples
  def initialize(*args)
    @numbers = *args
  end

  def to(upper_limit)
    sum = 0
    (1..upper_limit - 1).each do |i|
      @numbers.each do |number|
        if (i % number).zero?
          sum += i
          break
        end
      end
    end
    sum
  end
end


