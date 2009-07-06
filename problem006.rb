# http://projecteuler.net/index.php?section=problems&id=6
# solved 06.07.2009

sum_of_squares = 0
sum = 0
(1..100).each do |i|
  sum_of_squares += i ** 2
  sum += i
end

diff = (sum ** 2) - sum_of_squares
puts diff