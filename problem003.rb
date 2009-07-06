# http://projecteuler.net/index.php?section=problems&id=3
# solved 06.07.2009

require 'mathn'

primes = Prime.new
number = 600851475143
prime = 0

while prime < number do
  prime = primes.next
  number /= prime if (number % prime).zero?
end

puts prime