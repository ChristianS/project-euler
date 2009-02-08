# http://projecteuler.net/index.php?section=problems&id=5
# solved 08.02.2009

divisors = Array(1..20)
result = 0
found = false
notneeded = Array.new

# clean array
for i in divisors
  for j in divisors
    if j / i > 1 && j % i == 0
      notneeded.push(i)
    end
  end
end

# reverse order for correct exclusion and faster computation
divisors.reverse!

# exclude not needed divisors
for k in 0..divisors.length-1
  if notneeded.include?(divisors[k])
    divisors.delete_at(k)
  end
end

while !found do
  found = true
  result += divisors[0] #take steps of biggest divisor
  divisors.each do |divisor|
    if !(result % divisor == 0)
      found = false
      break #faster: break at first fail
    end
  end
end

puts result