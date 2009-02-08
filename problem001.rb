# http://projecteuler.net/index.php?section=problems&id=1
# solved 06.02.2009
result = 0
for x in 0..999
  if x % 3 == 0 || x % 5 == 0
    result += x
  end
end
puts result