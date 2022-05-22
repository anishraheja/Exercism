class Grains
  def self.square(square_number)
    raise ArgumentError if square_number < 1 || square_number > 64

    2.pow square_number - 1
  end

  def self.total
    (1..64).inject(0){ |sum, number| sum + self.square(number) }
  end
end
