# http://projecteuler.net/index.php?section=problems&id=4
# solved 06.07.2009

result = 0

(100..999).each do |i|
  (i..999).each do |j|
    product = i * j
    #if (product / 100000 == product % 10) && ((product / 10000) % 10 == (product % 100) / 10) && ((product / 1000) % 10 == (product % 1000) / 100)
    if product > result && product.to_s == product.to_s.reverse
      result = product
    end
  end
end

puts result