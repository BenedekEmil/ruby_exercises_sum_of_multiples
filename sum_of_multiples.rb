class SumOfMultiples
  def initialize(*args)
    @numbers = *args
  end

  def to(upper_limit)
    1.upto(upper_limit - 1).inject(0) do |sum, i|
      @numbers.any? { |number| (i % number).zero? } ? sum + i : sum
    end
  end
end


