class SliceLengthError < ArgumentError
  def initialize(message = 'Slice length should be less than or equal to length of numeric string.')
    super(message)
  end
end

class Series
  private

  attr_reader :series, :series_size

  def initialize(sequence)
    @series = sequence
    @series_size = sequence.length
  end

  public

  def slices(length)
    raise SliceLengthError unless series_size >= length

    series.chars.each_cons(length).map { |numbers| numbers.join }
  end
end
