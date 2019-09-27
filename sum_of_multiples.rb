class SumOfMultiples
  def initialize(*args)
    @numbers = *args
  end

  def to(upper_limit)
    sum = 0
    (1..upper_limit - 1).each do |i|
      sum += i if @numbers.any? { |number| (i % number).zero? }
    end
    sum
  end
end


