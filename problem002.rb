# http://projecteuler.net/index.php?section=problems&id=2
# solved 09.02.2009

x = 1
y = 1
result = 0

while y <= 4000000 do
  if y % 2 == 0
    result += y
  end
  w = x + y
  x = y
  y = w
end

puts result