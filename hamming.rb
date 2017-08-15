class Hamming
  def self.compute(strand_one, strand_two)
    if strand_one.length != strand_two.length
      raise ArgumentError
    else
      hammingDistance = 0
      strand_two = strand_two.split("")
      strand_one.each_char.with_index(0) do |char, index|
        if strand_two[index] != char.to_s
          hammingDistance += 1
        end
      end
      hammingDistance
    end
  end
end

module BookKeeping
  VERSION = 3
end
