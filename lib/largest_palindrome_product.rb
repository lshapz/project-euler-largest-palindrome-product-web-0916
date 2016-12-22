# Implement your procedural solution here!
def largest_palindrome_product
  max = 0
  (100..999).each do |one|
    (100..999).each do |two|
      prod = one * two
      if pal?(prod) && prod > max
        max = prod
      end
    end
  end
  max
end 

def pal?(input)
  input.to_s == input.to_s.reverse
end