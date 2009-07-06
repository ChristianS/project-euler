# http://projecteuler.net/index.php?section=problems&id=3
# solved 06.07.2009

require 'mathn'

primes = Prime.new
number = 600851475143

prime = primes.next

while prime < number do
  if number % prime == 0
    number = number / prime
  end
  prime = primes.next
end

puts prime