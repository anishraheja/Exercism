# Program accepts two inputs.
# First input declares the nnumber that user wants the multiples of.
# Second, determines the limit till which the multiples are to be found.

class SumOfMultiples
  private

  attr_reader :multiples_of

  def initialize(*multiples_of)
    @multiples_of = multiples_of
  end

  public

  def to(limit_number)
    sum_of_multiples = []

    return 0 if @multiples_of.sum.zero?

    (0...limit_number).each do |divident|
      multiples_of.each do  |divisor|
        sum_of_multiples << divident if (divident % divisor).zero?
      end
    end
    sum_of_multiples.uniq.sum
  end
end
