# Implement your object-oriented solution here!

class LargestPalindromeProduct

def answer
  max = 0
  (100..999).each do |one|
    (100..999).each do |two|
      prod = one * two
      if self.pal?(prod) && prod > max
        max = prod
      end
    end
  end
  max
end 

def pal?(input)
  input.to_s == input.to_s.reverse
end

end