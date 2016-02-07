# http://projecteuler.net/index.php?section=problems&id=7
# solved 

require 'mathn'

primes = Prime.new
10000.times {primes.next}
puts primes.next